# GroupSeminormClass.toSeminormedGroup

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f47510e0b727e3062c28ee3aae7ac024f505afc9cace2e03b78caa4d022f0512",
  "kind": "abbrev",
  "lexical_name": "GroupSeminormClass.toSeminormedGroup",
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
  "slug": "groupseminormclass-toseminormedgroup--dd9cefe27ac7be63e91cfa2f",
  "source": {
    "blob": "acaf8ecf74c57f604fc2538e4141887986140042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 33,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:dd9cefe27ac7be63e91cfa2f26a75b8b300d410e8da771d41aaffdcdd45bbb09",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f47510e0b727e3062c28ee3aae7ac024f505afc9cace2e03b78caa4d022f0512`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 33–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev GroupSeminormClass.toSeminormedGroup [Group α] [GroupSeminormClass F α ℝ]
    (f : F) : SeminormedGroup α where
  norm := f
  dist x y := f (x / y)
  dist_eq _ _ := rfl
  dist_self _ := by simp
  dist_comm x y := by simp only [← map_inv_eq_map f (x / y), inv_div]
  dist_triangle x y z := by simpa using map_mul_le_add f (x / y) (y / z)

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant3eb389649a7006790a4b64927c59a4a9ecd33adab8b5e60ff3e757b17220756a.lean#L33).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `acaf8ecf74c57f604fc2538e4141887986140042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
