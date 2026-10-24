# coverMincard_le_pow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "38015c8911940b320a2cbd89df153f30f342af42",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 311,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/75/75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3e33a4fb-aed1-62c9-3efd-581a563938a7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:415f2601-af2b-c226-6b44-5c19d100737d",
  "kind": "lemma",
  "lexical_name": "coverMincard_le_pow",
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
  "slug": "covermincard-le-pow--9c2b1f5cad264d52b6845659",
  "source": {
    "blob": "38015c8911940b320a2cbd89df153f30f342af42",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 311,
    "path": "GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c2b1f5cad264d52b6845659b4eb7990c9d03b3d773866ef723b2d9040076a37",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:415f2601-af2b-c226-6b44-5c19d100737d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 311–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma coverMincard_le_pow {T : X → X} {F : Set X} (F_inv : MapsTo T F F) {U : Set (X × X)}
    (U_symm : IsSymmetricRel U) {m : ℕ} (m_pos : 0 < m) (n : ℕ) :
    coverMincard T F (U ○ U) n ≤ coverMincard T F U m ^ (n / m + 1) :=
  (coverMincard_monotone_time T F (U ○ U) (Nat.lt_mul_div_succ n m_pos).le).trans
    (coverMincard_mul_le_pow F_inv U_symm m (n / m + 1))

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/CoverEntropy/Variant75416b6a8c34270d3191ca7c2e36f12306ff0311a71143ad82bf5f351abf0eb6.lean#L311).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38015c8911940b320a2cbd89df153f30f342af42` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
