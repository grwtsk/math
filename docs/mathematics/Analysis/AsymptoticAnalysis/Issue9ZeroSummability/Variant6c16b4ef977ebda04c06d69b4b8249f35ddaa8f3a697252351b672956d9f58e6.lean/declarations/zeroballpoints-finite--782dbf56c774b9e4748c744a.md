# zeroBallPoints_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fb9777f9b9c0886256778bccbe93443c65a3754b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 17,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6c/6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:5415c64f-7dbe-9476-5ef7-2ad3ccb9674a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:60f7706f-818c-52b8-753d-757f1b85327f",
  "kind": "theorem",
  "lexical_name": "zeroBallPoints_finite",
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
  "slug": "zeroballpoints-finite--782dbf56c774b9e4748c744a",
  "source": {
    "blob": "fb9777f9b9c0886256778bccbe93443c65a3754b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 30,
    "line": 17,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:782dbf56c774b9e4748c744a28bdf1b30fa0a2c3e4a5d8bb183e86ff43355282",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f7706f-818c-52b8-753d-757f1b85327f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 17–30.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeroBallPoints_finite (R : ℝ) : Finite (ZeroBallPoints R) := by
  let T : Set ℂ := closedBall (1/2:ℂ) R ∩ riemannZetaZeros
  have ht : T.Finite := (isCompact_closedBall (1/2:ℂ) R).inter_riemannZetaZeros_finite
  have : Finite T := ht.to_subtype
  let f : ZeroBallPoints R → T := fun p ↦ ⟨p.val.val, by
    constructor
    · simpa only [mem_closedBall, dist_eq_norm] using p.property
    · exact p.val.property.1⟩
  apply Finite.of_injective f
  intro p q h
  apply Subtype.ext
  apply Subtype.ext
  exact congrArg (fun t : T ↦ t.val) h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Issue9ZeroSummability/Variant6c16b4ef977ebda04c06d69b4b8249f35ddaa8f3a697252351b672956d9f58e6.lean#L17).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb9777f9b9c0886256778bccbe93443c65a3754b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
