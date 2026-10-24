# ultrafilter_extend_eq_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed1734e2-e1e5-12a3-e939-8ad88d446000",
  "kind": "theorem",
  "lexical_name": "ultrafilter_extend_eq_iff",
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
  "slug": "ultrafilter-extend-eq-iff--7d37eaf3e0c64d1226221542",
  "source": {
    "blob": "abbaa476aba7139389c6225e698dfc7832dfad97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 239,
    "line": 208,
    "path": "GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7d37eaf3e0c64d1226221542cbe61857fe582cd3e92dbf64724881c93da821a0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ed1734e2-e1e5-12a3-e939-8ad88d446000`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–239.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ultrafilter_extend_eq_iff {f : α → γ} {b : Ultrafilter α} {c : γ} :
    Ultrafilter.extend f b = c ↔ ↑(b.map f) ≤ 𝓝 c :=
  ⟨fun h => by
    -- Write b as an ultrafilter limit of pure ultrafilters, and use
    -- the facts that ultrafilter.extend is a continuous extension of f.
    let b' : Ultrafilter (Ultrafilter α) := b.map pure
    have t : ↑b' ≤ 𝓝 b := ultrafilter_converges_iff.mpr (bind_pure _).symm
    rw [← h]
    have := (continuous_ultrafilter_extend f).tendsto b
    refine' le_trans _ (le_trans (map_mono t) this)
    change _ ≤ map (Ultrafilter.extend f ∘ pure) ↑b
    rw [ultrafilter_extend_extends]
    exact le_rfl, fun h =>
    letI : TopologicalSpace α := ⊥
    denseInducing_pure.extend_eq_of_tendsto
      (le_trans (map_mono (ultrafilter_comap_pure_nhds _)) h)⟩
#align ultrafilter_extend_eq_iff ultrafilter_extend_eq_iff

end Extension

end Ultrafilter

section StoneCech

/- Now, we start with a (not necessarily discrete) topological space α
  and we want to construct its Stone-Čech compactification. We can
  build it as a quotient of `Ultrafilter α` by the relation which
  identifies two points if the extension of every continuous function
  α → γ to a compact Hausdorff space sends the two points to the same
  point of γ. -/
variable (α : Type u) [TopologicalSpace α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/StoneCech/Varianta1b8c91c17651ce32190496991674750eb9c29326ebcea4bfdb8da7ad65664e5.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `abbaa476aba7139389c6225e698dfc7832dfad97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
