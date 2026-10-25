# bits_single

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:27de3127-8068-dd4f-6d95-cad627cd37b6",
  "kind": "theorem",
  "lexical_name": "bits_single",
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
  "slug": "bits-single--f38ac268ccc1838fba7ce79d",
  "source": {
    "blob": "4838c179bfc17e51eb61e19b567b56a53e09f589",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 506,
    "line": 487,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f38ac268ccc1838fba7ce79d2bd50721778cfe0cef7e81893832772034991937",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:27de3127-8068-dd4f-6d95-cad627cd37b6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 487–506.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem bits_single (Γ : List (Expr S)) (A N : Expr S) (θ : Bits) :
    CompatibleBits (support (P := P) C Γ A) false (Expr.single N) (extendBit θ (chosenBit (P
      := P) C Γ A)) θ := by
  intro i p hi
  cases i with
  | zero =>
    right
    simp only [extendBit,chosenBit,hi,Bool.false_xor]
  | succ i => exact .inl ⟨i,rfl,rfl⟩

end

section
universe u
open Candidates
variable {S : Type u} {P : Specification S} (Ω : ContextTower P) (C : Set (Set S))
variable (hw : SystemWeaklyNormalizing P)
include hw

open Classical in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OneChild/Variant7fb8202d67cb0ca21b423faed0d719eb9704bea8b12013de93110520cc9e6ed1.lean#L487).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4838c179bfc17e51eb61e19b567b56a53e09f589` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
