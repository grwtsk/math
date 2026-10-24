# Set.finite_diff_iUnion_Ioo'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1408f2fd-b88e-591d-0621-f3274a5cc2db",
  "kind": "lemma",
  "lexical_name": "Set.finite_diff_iUnion_Ioo'",
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
  "slug": "set-finite-diff-iunion-ioo--9aeb9cfedfca3fe2c387b6ed",
  "source": {
    "blob": "925ee3fb8c1f0362e08f308b3d82b79c987d3f23",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 447,
    "line": 445,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9aeb9cfedfca3fe2c387b6ed74442d2b32cc1e871e4cb753c45a8c3546887605",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1408f2fd-b88e-591d-0621-f3274a5cc2db`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 445–447.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Set.finite_diff_iUnion_Ioo' (s : Set α) : (s \ ⋃ x : s × s, Ioo x.1 x.2).Finite := by
  simpa only [iUnion, iSup_prod, iSup_subtype] using s.finite_diff_iUnion_Ioo

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variant9c026a5f2d6bc28fcef22e2d3a87e5ae89a0d0abec5587ca4df7ad937189d0ba.lean#L445).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `925ee3fb8c1f0362e08f308b3d82b79c987d3f23` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
