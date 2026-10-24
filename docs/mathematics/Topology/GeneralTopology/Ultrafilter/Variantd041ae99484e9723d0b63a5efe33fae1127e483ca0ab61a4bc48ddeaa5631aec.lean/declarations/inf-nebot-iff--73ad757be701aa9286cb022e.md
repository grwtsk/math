# inf_neBot_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4de2dcac-ccdc-50ea-2857-8b6d3de32cb3",
  "kind": "theorem",
  "lexical_name": "inf_neBot_iff",
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
  "slug": "inf-nebot-iff--73ad757be701aa9286cb022e",
  "source": {
    "blob": "4a6e79830e0f3b6bfd9bc8ce25bf44f8d58c04c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 118,
    "path": "GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:73ad757be701aa9286cb022e83ea91916552313b4bce1a22af8f4ef1aa2c66a7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4de2dcac-ccdc-50ea-2857-8b6d3de32cb3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 118–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inf_neBot_iff {f : Ultrafilter α} {g : Filter α} : NeBot (↑f ⊓ g) ↔ ↑f ≤ g :=
  ⟨le_of_inf_neBot f, fun h => (inf_of_le_left h).symm ▸ f.neBot⟩
#align ultrafilter.inf_ne_bot_iff Ultrafilter.inf_neBot_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Ultrafilter/Variantd041ae99484e9723d0b63a5efe33fae1127e483ca0ab61a4bc48ddeaa5631aec.lean#L118).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a6e79830e0f3b6bfd9bc8ce25bf44f8d58c04c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
