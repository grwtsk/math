# mem_supportedClaims_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3e01699-74c6-a23e-793f-77722fe086d6",
  "kind": "theorem",
  "lexical_name": "mem_supportedClaims_iff",
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
  "slug": "mem-supportedclaims-iff--c41f1359644f4b414914a3fc",
  "source": {
    "blob": "a257229bd43026937b34cc93486075286e2ab0fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 165,
    "path": "GRWTSK/Logic/Inference/FiniteRuleSystems.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c41f1359644f4b414914a3fc00fb496750c6520a99801a08c17ae159237c0faf",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3e01699-74c6-a23e-793f-77722fe086d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 165–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_supportedClaims_iff (routes : Provider → ProofRoute Claim)
    (eligible : Finset Provider) (claim : Claim) :
    claim ∈ supportedClaims routes eligible ↔ GroundedSupport routes eligible claim := by
  classical
  constructor
  · intro member
    let grounded := Finset.univ.filter (GroundedSupport routes eligible)
    have closed : SupportClosed routes eligible grounded := by
      intro provider admitted premises
      simp only [grounded, Finset.mem_filter, Finset.mem_univ, true_and]
      apply GroundedSupport.via provider admitted
      intro prerequisite premise
      have member := premises premise
      simpa only [grounded, Finset.mem_filter, Finset.mem_univ, true_and] using member
    have derived := supportedClaims_least routes eligible closed member
    simpa only [grounded, Finset.mem_filter, Finset.mem_univ, true_and] using derived
  · exact grounded_mem_of_closed routes eligible _ (supportedClaims_closed routes eligible)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/FiniteRuleSystems__SourceOccurrenceae44fb0262f430d52afbbdcd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Logic/Inference/FiniteRuleSystems.lean#L165).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a257229bd43026937b34cc93486075286e2ab0fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
