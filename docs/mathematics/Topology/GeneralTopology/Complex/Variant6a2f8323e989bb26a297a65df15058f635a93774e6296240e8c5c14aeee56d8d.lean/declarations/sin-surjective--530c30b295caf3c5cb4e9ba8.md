# sin_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f1dd83b-bc29-680a-0301-88a42c489807",
  "kind": "theorem",
  "lexical_name": "sin_surjective",
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
  "slug": "sin-surjective--530c30b295caf3c5cb4e9ba8",
  "source": {
    "blob": "5bd1b6e3a38715e4c862f35afa86bb5bd791d742",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 199,
    "path": "GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:530c30b295caf3c5cb4e9ba8daa983eb6fde9a0477b54495b4180dfdcf359049",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f1dd83b-bc29-680a-0301-88a42c489807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 199–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sin_surjective : Function.Surjective sin := by
  intro x
  rcases cos_surjective x with ⟨z, rfl⟩
  exact ⟨z + π / 2, sin_add_pi_div_two z⟩
#align complex.sin_surjective Complex.sin_surjective

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Complex/Variant6a2f8323e989bb26a297a65df15058f635a93774e6296240e8c5c14aeee56d8d.lean#L199).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5bd1b6e3a38715e4c862f35afa86bb5bd791d742` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
