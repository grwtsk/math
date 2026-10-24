# ProvenanceCoherent

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b64e4f3843281a262d09cb1399b48c80556e1289f32315ce6ed034db384a4027",
  "kind": "def",
  "lexical_name": "ProvenanceCoherent",
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
  "slug": "provenancecoherent--b301d61c43b5237ce9da69f4",
  "source": {
    "blob": "d1b1df93a09e66fe6122be5f2bb58ded5bbb52e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Variantcf1ec7d174f4d831790085a2e26603b7bc8d85880d9b6ff6c99fc092208164f1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b301d61c43b5237ce9da69f4059713ded10b79e7b29b59f5b4b6b70bbffc64ca",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Variantcf1ec7d174f4d831790085a2e26603b7bc8d85880d9b6ff6c99fc092208164f1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b64e4f3843281a262d09cb1399b48c80556e1289f32315ce6ed034db384a4027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ProvenanceCoherent (evidence : ExternalEvidence) : Prop :=
  evidence.attestation.issuer = evidence.owner.identifier ∧
  ∀ item ∈ evidence.attestation.evidence.items,
    item.origin.producer = evidence.owner.identifier ∧
    item.origin.authority = evidence.owner.executionAuthorityClass

end ExternalEvidence

/--
The only theorem-bearing bridge from an attestation to a proposition.  The
proof is supplied explicitly in the Lean trusted base; it is not extracted
from a hash, log, workflow result, or attestation field.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Variantcf1ec7d174f4d831790085a2e26603b7bc8d85880d9b6ff6c99fc092208164f1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Evidence/Variantcf1ec7d174f4d831790085a2e26603b7bc8d85880d9b6ff6c99fc092208164f1.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d1b1df93a09e66fe6122be5f2bb58ded5bbb52e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
