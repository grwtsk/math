# product_read_congr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ba7f9a90-9ff4-52cf-1a22-2b61efff5c42",
  "kind": "theorem",
  "lexical_name": "product_read_congr",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "product-read-congr--8cd56432dbeebec5bbad4181",
  "source": {
    "blob": "fc8b46f226b462286f2b1ca9f76a4d37bb84c64a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 261,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8cd56432dbeebec5bbad41815200917c4553193f62fae24d72a1ce8d50e2a7df",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba7f9a90-9ff4-52cf-1a22-2b61efff5c42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 261–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem product_read_congr {D E D' E' : Expr S} {a b c a' b' c' : S}
    (h : HasType P Γ (.pi D E) T) (h' : HasType P Δ (.pi D' E') T')
    (hd : HasType P Γ D (.sort a)) (hb : HasType P (D :: Γ) E (.sort b)) (hr : P.rule a b c)
    (hd' : HasType P Δ D' (.sort a')) (hb' : HasType P (D' :: Δ) E' (.sort b')) (hr' : P.rule
      a' b' c')
    (hc : Converts T (.sort c)) (hc' : Converts T' (.sort c'))
    (ed : Evaluator (hw := hw) Ω C hno Γ D (.sort a))
    (ed' : Evaluator (hw := hw) Ω C hno Δ D' (.sort a'))
    (eb : Evaluator (hw := hw) Ω C hno (D :: Γ) E (.sort b))
    (eb' : Evaluator (hw := hw) Ω C hno (D' :: Δ) E' (.sort b'))
    (e : Environment (hw := hw) Ω C hno Γ) (e' : Environment (hw := hw) Ω C hno Δ)
    (hM : (Expr.pi D E |>.subst e.images).normalForm = (Expr.pi D' E' |>.subst
      e'.images).normalForm)
    (hpc : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C →
      (productCandidate hd hb hr ed eb e).val = (productCandidate hd' hb' hr' ed' eb' e').val) :
    (product h hd hb hr hc ed eb e).read.val = (product h' hd' hb' hr' hc' ed' eb'
      e').read.val := by
  by_cases hh : Ω.profile (Expr.pi D E |>.subst e.images).normalForm ∈ C
  · have hh' : Ω.profile (Expr.pi D' E' |>.subst e'.images).normalForm ∈ C := hM ▸ hh
    simp only [product,if_pos hh,if_pos hh']
    exact hpc hh
  · have hh' : Ω.profile (Expr.pi D' E' |>.subst e'.images).normalForm ∉ C := hM ▸ hh
    simp only [product,if_neg hh,if_neg hh']
    exact congrArg (Candidates.Top Ω) hM
end PreResult
end PureTypeSystem.ObservationValues

namespace PureTypeSystem
universe u
namespace Expr
variable {S : Type u} {M : Expr S} {n : Nat}
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Congruence/Variant948abe95f4d63c9d8d8c2daf3bfc5f37971a17327c2231290ac34f190f3ea882.lean#L261).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fc8b46f226b462286f2b1ca9f76a4d37bb84c64a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
