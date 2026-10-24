# ofDerivation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed6d42cdddb84ab58687dc4e763373c9ea61fe480baf94247a0bff6e94caf536",
  "kind": "def",
  "lexical_name": "ofDerivation",
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
  "slug": "ofderivation--b9b142f6d9b9d6f7d7175c63",
  "source": {
    "blob": "35c5b4540034ed3cce4a0b1e13c55e6afc18e73d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 46,
    "path": "GRWTSK/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b9b142f6d9b9d6f7d7175c63a8b1b96a1f68224f72da3872c5cb00caaf3cf253",
  "verification": {
    "reference": "docs/verification/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed6d42cdddb84ab58687dc4e763373c9ea61fe480baf94247a0bff6e94caf536`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofDerivation : Derivation R A A →ₗ⁅R⁆ LieDerivation R (A ⊗[R] L) (A ⊗[R] L) where
  toFun d :=
    { toFun := d.rTensor L
      map_add' := by simp
      map_smul' := by simp
      leibniz' x y := by
        simp only [LinearMap.coe_mk, AddHom.coe_mk]
        refine x.inductionOn (fun _ l ↦ ?_) (fun _ _ h1 h2 ↦ ?_)
        · refine y.inductionOn (fun _ l' ↦ ?_) (fun _ _ h1 h2 ↦ ?_)
          · simp [← lie_skew l' l, -lie_skew, add_tmul, tmul_neg]
          · simp [h1, h2, sub_add_sub_comm]
        · simp [h1, h2, sub_add_sub_comm] }
  map_add' _ _ := by ext; simp
  map_smul' _ _ := by ext; simp
  map_lie' {_ _} := by
    ext z
    refine z.inductionOn (by simp [sub_tmul]) (fun _ _ hx hy ↦ ?_)
    simp_all
    abel

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/BaseChange/Variant91eee2684dee7c4dbd54404664473fbd9f90d7a19c562a010c456e3bbaf908a8.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35c5b4540034ed3cce4a0b1e13c55e6afc18e73d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
