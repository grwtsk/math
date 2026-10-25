# of_toReal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1743e60d-8142-cbd7-1696-5de4cdee8d22",
  "kind": "lemma",
  "lexical_name": "of_toReal",
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
  "slug": "of-toreal--5ce92178d364bddb28e55a4d",
  "source": {
    "blob": "8c52788e88744124b23a343548bf79c62bd274c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 491,
    "line": 488,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5ce92178d364bddb28e55a4d8efdf772d2799bdb337af77d9f0f0253590c1a9e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1743e60d-8142-cbd7-1696-5de4cdee8d22`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 488–491.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma of_toReal (h : p.toReal.HolderConjugate q.toReal) : p.HolderConjugate q := by
  rw [Real.HolderConjugate] at h
  exact HolderTriple.of_toReal (toReal_one ▸ h)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ConjExponents/Variantbe5869b1d089c3cf61d0353465150d3d6766965a0aa085cbeee6c921f8214974.lean#L488).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8c52788e88744124b23a343548bf79c62bd274c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
