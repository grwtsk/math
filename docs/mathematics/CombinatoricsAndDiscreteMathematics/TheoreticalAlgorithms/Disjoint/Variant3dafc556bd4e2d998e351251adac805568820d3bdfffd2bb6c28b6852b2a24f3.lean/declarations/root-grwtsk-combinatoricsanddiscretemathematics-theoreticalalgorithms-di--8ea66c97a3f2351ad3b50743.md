# _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DisjointIff.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.HasSubset.Subset.diff_ssubset_of_nonempty

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:47b42cff-9710-b96c-e727-1607f7e06e5d",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DisjointIff.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.HasSubset.Subset.diff_ssubset_of_nonempty",
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
  "slug": "root-grwtsk-combinatoricsanddiscretemathematics-theoreticalalgorithms-di--8ea66c97a3f2351ad3b50743",
  "source": {
    "blob": "3693173024884ee4015eb04fde40f4b41aa954b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 135,
    "line": 132,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8ea66c97a3f2351ad3b50743866fd45a9464e9a5bb904a8fe09ad3bfc3c9dfc1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:47b42cff-9710-b96c-e727-1607f7e06e5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 132–135.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DisjointIff.Variant3e84f59f52e2e5316a9125d372dd91465917807380846b6ee93d4f857a7e60a7.HasSubset.Subset.diff_ssubset_of_nonempty (hst : s ⊆ t) (hs : s.Nonempty) :
    t \ s ⊂ t := by
  simpa [inter_eq_self_of_subset_right hst]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Disjoint/Variant3dafc556bd4e2d998e351251adac805568820d3bdfffd2bb6c28b6852b2a24f3.lean#L132).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3693173024884ee4015eb04fde40f4b41aa954b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
