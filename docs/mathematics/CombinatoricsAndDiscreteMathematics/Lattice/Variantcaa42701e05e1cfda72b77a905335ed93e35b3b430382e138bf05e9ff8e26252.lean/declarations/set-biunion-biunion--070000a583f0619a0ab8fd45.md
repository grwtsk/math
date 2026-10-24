# set_biUnion_biUnion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f19941f0-20a4-fd7c-0e39-7268cb0fd289",
  "kind": "theorem",
  "lexical_name": "set_biUnion_biUnion",
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
  "slug": "set-biunion-biunion--070000a583f0619a0ab8fd45",
  "source": {
    "blob": "fd5914d0357be8b3d0ed77aaa19c765bde61eecc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2094,
    "line": 2090,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantcaa42701e05e1cfda72b77a905335ed93e35b3b430382e138bf05e9ff8e26252.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:070000a583f0619a0ab8fd45d0a5219ce1a77dd78c78fd0d7a41ee020d67d7cb",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Lattice/Variantcaa42701e05e1cfda72b77a905335ed93e35b3b430382e138bf05e9ff8e26252.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f19941f0-20a4-fd7c-0e39-7268cb0fd289`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2090–2094.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem set_biUnion_biUnion (s : Finset γ) (t : γ → Finset α) (f : α → Set β) :
    ⋃ y ∈ s.biUnion t, f y = ⋃ (x ∈ s) (y ∈ t x), f y :=
  iSup_biUnion s t f
#align finset.set_bUnion_bUnion Finset.set_biUnion_biUnion

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Lattice/Variantcaa42701e05e1cfda72b77a905335ed93e35b3b430382e138bf05e9ff8e26252.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Lattice/Variantcaa42701e05e1cfda72b77a905335ed93e35b3b430382e138bf05e9ff8e26252.lean#L2090).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fd5914d0357be8b3d0ed77aaa19c765bde61eecc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
