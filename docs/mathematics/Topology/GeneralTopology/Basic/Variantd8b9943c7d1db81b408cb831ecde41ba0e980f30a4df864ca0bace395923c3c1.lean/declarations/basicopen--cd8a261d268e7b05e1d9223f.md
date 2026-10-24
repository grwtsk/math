# basicOpen

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60b28e2b40d968b5fa7f3a632e4560dd85ff987b21f1dbade9b61b083fad2840",
  "kind": "def",
  "lexical_name": "basicOpen",
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
  "slug": "basicopen--cd8a261d268e7b05e1d9223f",
  "source": {
    "blob": "e97b889528b70e65374a15e4996c95126191254a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 138,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd8a261d268e7b05e1d9223ff2e186a420b6361f062d2677793a6354137a9060",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60b28e2b40d968b5fa7f3a632e4560dd85ff987b21f1dbade9b61b083fad2840`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def basicOpen {U : Opens X} (f : X.presheaf.obj (op U)) : Opens X where
  carrier := { x : X | ∃ (hx : x ∈ U), IsUnit (X.presheaf.germ U x hx f) }
  is_open' := by
    rw [isOpen_iff_forall_mem_open]
    rintro x ⟨hxU, hx⟩
    obtain ⟨V, i, hxV, hf⟩ := X.isUnit_res_of_isUnit_germ U f x hxU hx
    use V.1
    refine ⟨?_, V.2, hxV⟩
    intro y hy
    use i.le hy
    convert! RingHom.isUnit_map (X.presheaf.germ _ y hy).hom hf
    exact (X.presheaf.germ_res_apply i y hy f).symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantd8b9943c7d1db81b408cb831ecde41ba0e980f30a4df864ca0bace395923c3c1.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e97b889528b70e65374a15e4996c95126191254a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
