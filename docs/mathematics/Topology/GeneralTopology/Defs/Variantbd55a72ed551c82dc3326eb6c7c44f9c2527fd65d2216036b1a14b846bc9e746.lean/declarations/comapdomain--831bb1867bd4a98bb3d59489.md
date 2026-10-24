# comapDomain

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:25ca39b737a69e10ca8111731d668d51090443ffb9d96ac42028ccf247213389",
  "kind": "def",
  "lexical_name": "comapDomain",
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
  "slug": "comapdomain--831bb1867bd4a98bb3d59489",
  "source": {
    "blob": "6bd57bc46ef53089e15ba6ae3ebaaa607c199002",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1066,
    "line": 1058,
    "path": "GRWTSK/Topology/GeneralTopology/Defs/Variantbd55a72ed551c82dc3326eb6c7c44f9c2527fd65d2216036b1a14b846bc9e746.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:831bb1867bd4a98bb3d594896cef1d19b5257722caa3a63e1117a0b9d66668d9",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Defs/Variantbd55a72ed551c82dc3326eb6c7c44f9c2527fd65d2216036b1a14b846bc9e746.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:25ca39b737a69e10ca8111731d668d51090443ffb9d96ac42028ccf247213389`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1058–1066.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def comapDomain [∀ i, Zero (β i)] (h : κ → ι) (hh : Function.Injective h)
    (f : Π₀ i, β i) : Π₀ k, β (h k) where
  toFun x := f (h x)
  support' :=
    f.support'.map fun s =>
      ⟨(s.1.finite_toSet.preimage hh.injOn).toFinset.val, fun x =>
        (s.prop (h x)).imp_left fun hx => (Set.Finite.mem_toFinset _).mpr <| hx⟩

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Defs/Variantbd55a72ed551c82dc3326eb6c7c44f9c2527fd65d2216036b1a14b846bc9e746.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Defs/Variantbd55a72ed551c82dc3326eb6c7c44f9c2527fd65d2216036b1a14b846bc9e746.lean#L1058).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6bd57bc46ef53089e15ba6ae3ebaaa607c199002` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
