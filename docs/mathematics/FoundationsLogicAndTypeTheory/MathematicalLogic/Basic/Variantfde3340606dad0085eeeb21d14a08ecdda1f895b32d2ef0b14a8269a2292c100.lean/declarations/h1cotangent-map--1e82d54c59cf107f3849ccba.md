# H1Cotangent.map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39cdb95170238e40ab677e91f02418a5f9f67c091357b7194a2cb3812f5d02fc",
  "kind": "def",
  "lexical_name": "H1Cotangent.map",
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
  "slug": "h1cotangent-map--1e82d54c59cf107f3849ccba",
  "source": {
    "blob": "ce1d4e0bae9401d8861b341c5370bebbceb5aa56",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 329,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1e82d54c59cf107f3849ccba9e2ae80b285575d3db5c6df33abb0cada3b8c0ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39cdb95170238e40ab677e91f02418a5f9f67c091357b7194a2cb3812f5d02fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def H1Cotangent.map (f : Hom P P') : P.H1Cotangent →ₗ[S] P'.H1Cotangent := by
  refine (Cotangent.map f).restrict (p := LinearMap.ker P.cotangentComplex)
    (q := (LinearMap.ker P'.cotangentComplex).restrictScalars S) fun x hx ↦ ?_
  simp only [LinearMap.mem_ker, Submodule.restrictScalars_mem] at hx ⊢
  apply_fun (CotangentSpace.map f) at hx
  rw [CotangentSpace.map_cotangentComplex] at hx
  rw [hx]
  exact LinearMap.map_zero _

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantfde3340606dad0085eeeb21d14a08ecdda1f895b32d2ef0b14a8269a2292c100.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ce1d4e0bae9401d8861b341c5370bebbceb5aa56` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
