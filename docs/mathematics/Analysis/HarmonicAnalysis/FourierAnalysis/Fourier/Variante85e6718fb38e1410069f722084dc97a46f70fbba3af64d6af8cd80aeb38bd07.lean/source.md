# Complete source: GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.Fourier.Variante85e6718fb38e1410069f722084dc97a46f70fbba3af64d6af8cd80aeb38bd07

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a2a6c4f690b99051afe05631d8a3ce0e282cc238` · SHA-256 `73051798066f53fea1311efaae997e608135b5e3d0c3a90ca0ee4e03008c763e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.HarmonicAnalysis.FourierAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierDyadic.Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FourierAnalysis.SourceCorpus.FourierDyadic.Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788","mathematical_subject":"Analysis.FourierAnalysis","original_sha256":"bcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/07/21/Surface/formal/.surface/overlays/session:2e628ee6531784ebd1c16c0e/workspace/lib/Boolean/Cube/Fourier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Boolean.Cube.TruthTable


namespace GRWTSK.Analysis.HarmonicAnalysis.FourierAnalysis.FourierDyadic.Variantbcd9cadd83f96808ddfef9a2f6f793f65f505461f4400c364d0437229b881788

namespace Boolean.Cube

/-- An integer-valued function on the Boolean hypercube. -/
abbrev Fourier.IntFunction (n : Nat) :=
  Hypercube.Point n → Int

/-- Alias for functions usually interpreted on signed coordinates. -/
abbrev Fourier.SignedFunction (n : Nat) :=
  Fourier.IntFunction n

/-- A dyadic rational `numerator / 2^exponent`. -/
structure Fourier.Dyadic where
  numerator : Int
  exponent : Nat
deriving Repr, DecidableEq

/-- Denominator of a dyadic rational. -/
def Fourier.Dyadic.denominator (q : Fourier.Dyadic) : Nat :=
  2 ^ q.exponent

/-- Convert a Boolean-valued function into a signed output function. -/
def Fourier.signedOutput {n : Nat} (f : TruthTable n) :
    Fourier.IntFunction n :=
  fun x => Hypercube.spinOfBool (f x)

/-- Convert a Boolean-valued function into a `0,1` output function. -/
def Fourier.zeroOneOutput {n : Nat} (f : TruthTable n) :
    Fourier.IntFunction n :=
  fun x => Hypercube.intOfBool (f x)

/--
Fourier character `χ_S(x) = ∏_{i ∈ S} x_i`.

The subset `S` is represented as a Boolean point: `S i = true` means `i ∈ S`.
The input coordinate `x_i` is interpreted as `-1` or `+1`.
-/
def Fourier.character {n : Nat}
    (S : Hypercube.Point n)
    (x : Hypercube.Point n) :
    Int :=
  match n with
  | 0 => 1
  | _ + 1 =>
      Fourier.character (Hypercube.dropLast S) (Hypercube.dropLast x) *
        match Hypercube.last S with
        | true => Hypercube.spinOfBool (Hypercube.last x)
        | false => 1

/--
Numerator of the Fourier coefficient:

`∑ₓ f(x) χ_S(x)`.

The full coefficient is this numerator divided by `2^n`.
-/
def Fourier.coefficientNumerator {n : Nat}
    (f : Fourier.IntFunction n)
    (S : Hypercube.Point n) :
    Int :=
  ListTools.sumInt
    ((Hypercube.vertices n).map
      (fun x => f x * Fourier.character S x))

/-- Fourier coefficient represented as `numerator / 2^n`. -/
def Fourier.coefficient {n : Nat}
    (f : Fourier.IntFunction n)
    (S : Hypercube.Point n) :
    Fourier.Dyadic where
  numerator := Fourier.coefficientNumerator f S
  exponent := n

/-- All subset characters of the n-dimensional signed cube. -/
def Fourier.subsets (n : Nat) :
    List (Hypercube.Point n) :=
  Hypercube.vertices n

/-- Numerator of the Fourier synthesis value at `x`. -/
def Fourier.synthesisNumeratorAt {n : Nat}
    (f : Fourier.IntFunction n)
    (x : Hypercube.Point n) :
    Int :=
  ListTools.sumInt
    ((Fourier.subsets n).map
      (fun S => Fourier.coefficientNumerator f S * Fourier.character S x))

/-- Fourier synthesis value represented as a dyadic rational. -/
def Fourier.synthesisAt {n : Nat}
    (f : Fourier.IntFunction n)
    (x : Hypercube.Point n) :
    Fourier.Dyadic where
  numerator := Fourier.synthesisNumeratorAt f x
  exponent := n

/-- Fourier-analysis workflow for Boolean functions. -/
def Fourier.workflow : List String :=
  [ "encode input bits as signed coordinates -1/+1"
  , "choose output encoding: 0/1 or -1/+1"
  , "build one parity character for every variable subset"
  , "average f(x) times each character over all cube vertices"
  , "interpret large coefficients as spectral structure"
  , "use high-degree mass as a proxy for sensitivity to noise"
  ]

end Boolean.Cube
```
