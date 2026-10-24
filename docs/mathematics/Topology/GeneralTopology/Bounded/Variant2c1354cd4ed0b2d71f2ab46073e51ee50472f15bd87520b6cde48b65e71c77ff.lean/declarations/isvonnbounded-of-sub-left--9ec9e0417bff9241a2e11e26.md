# IsVonNBounded.of_sub_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a70280ab-b0b0-b99c-5844-badeef632e61",
  "kind": "theorem",
  "lexical_name": "IsVonNBounded.of_sub_left",
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
  "slug": "isvonnbounded-of-sub-left--9ec9e0417bff9241a2e11e26",
  "source": {
    "blob": "66d00f748acb5887e35769ac2433feb5a96ab665",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 342,
    "path": "GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9ec9e0417bff9241a2e11e2607957ec70e22668bd5e8952c33aecdc9bbfd9839",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a70280ab-b0b0-b99c-5844-badeef632e61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 342–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsVonNBounded.of_sub_left (hst : IsVonNBounded 𝕜 (s - t)) (ht : t.Nonempty) :
    IsVonNBounded 𝕜 s :=
  ((sub_eq_add_neg s t).subst hst).of_add_left ht.neg

end ContinuousAdd

section IsTopologicalAddGroup

variable [IsTopologicalAddGroup E] {s t : Set E}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bounded/Variant2c1354cd4ed0b2d71f2ab46073e51ee50472f15bd87520b6cde48b65e71c77ff.lean#L342).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66d00f748acb5887e35769ac2433feb5a96ab665` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
