# Filter.HasBasis.uniformity_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e657500-8cce-f5bb-1522-f67ca503ed34",
  "kind": "theorem",
  "lexical_name": "Filter.HasBasis.uniformity_prod",
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
  "slug": "filter-hasbasis-uniformity-prod--a8d1322cd626a79612b85c63",
  "source": {
    "blob": "e0505f4c40fa377aa97d85a26c412b9decac6dfb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 719,
    "line": 713,
    "path": "GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8d1322cd626a79612b85c63f9ad79d89203ec96fe5da8af765644d782fcbfb9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e657500-8cce-f5bb-1522-f67ca503ed34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 713–719.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Filter.HasBasis.uniformity_prod {ιa ιb : Type*} [UniformSpace α] [UniformSpace β]
    {pa : ιa → Prop} {pb : ιb → Prop} {sa : ιa → Set (α × α)} {sb : ιb → Set (β × β)}
    (ha : (𝓤 α).HasBasis pa sa) (hb : (𝓤 β).HasBasis pb sb) :
    (𝓤 (α × β)).HasBasis (fun i : ιa × ιb ↦ pa i.1 ∧ pb i.2)
    (fun i ↦ entourageProd (sa i.1) (sb i.2)) :=
  (ha.comap _).inf (hb.comap _)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UniformSpaces/Basic/Variant7c6d3adbbbf1d053a7dcd18cf476897da55c0bce790ba9493caac16b9d82f5b9.lean#L713).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0505f4c40fa377aa97d85a26c412b9decac6dfb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
