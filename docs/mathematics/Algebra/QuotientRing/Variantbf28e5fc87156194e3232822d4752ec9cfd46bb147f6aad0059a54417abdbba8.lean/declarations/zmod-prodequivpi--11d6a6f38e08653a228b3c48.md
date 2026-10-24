# ZMod.prodEquivPi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f97188656bda4c7393b80a0d5185a3634f10dac82ad97c60644a90f2eae2682",
  "kind": "def",
  "lexical_name": "ZMod.prodEquivPi",
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
  "slug": "zmod-prodequivpi--11d6a6f38e08653a228b3c48",
  "source": {
    "blob": "f33695db8d80def105e1c513f783cd2eaf1ce0ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 78,
    "path": "GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:11d6a6f38e08653a228b3c48ed40fbce0382cae044604f0f4b2737d6de8aadbb",
  "verification": {
    "reference": "docs/verification/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f97188656bda4c7393b80a0d5185a3634f10dac82ad97c60644a90f2eae2682`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ZMod.prodEquivPi {ι : Type*} [Fintype ι] (a : ι → ℕ)
    (coprime : Pairwise (Nat.Coprime on a)) : ZMod (∏ i, a i) ≃+* Π i, ZMod (a i) :=
  have : Pairwise fun i j => IsCoprime (span {(a i : ℤ)}) (span {(a j : ℤ)}) :=
    fun _i _j h ↦ (isCoprime_span_singleton_iff _ _).mpr ((coprime h).cast (R := ℤ))
  Int.quotientSpanNatEquivZMod _ |>.symm.trans <|
  quotEquivOfEq (iInf_span_singleton_natCast (R := ℤ) coprime) |>.symm.trans <|
  quotientInfRingEquivPiQuotient _ this |>.trans <|
  RingEquiv.piCongrRight fun i ↦ Int.quotientSpanNatEquivZMod (a i)

open Finset Function in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/QuotientRing/Variantbf28e5fc87156194e3232822d4752ec9cfd46bb147f6aad0059a54417abdbba8.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f33695db8d80def105e1c513f783cd2eaf1ce0ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
