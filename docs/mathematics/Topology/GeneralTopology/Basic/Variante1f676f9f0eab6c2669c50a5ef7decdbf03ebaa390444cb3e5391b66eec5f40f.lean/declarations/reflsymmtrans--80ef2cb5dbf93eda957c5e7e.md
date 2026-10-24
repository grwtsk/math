# reflSymmTrans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7430ac548aaf38faf362048a4453b43895ff752817e0c00283514c21194d1806",
  "kind": "def",
  "lexical_name": "reflSymmTrans",
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
  "slug": "reflsymmtrans--80ef2cb5dbf93eda957c5e7e",
  "source": {
    "blob": "6968563145948b67953f4aa49441c0ce263f4c7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 96,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80ef2cb5dbf93eda957c5e7e3164c094087be2c4c5f6ef213e654e03958e17c0",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7430ac548aaf38faf362048a4453b43895ff752817e0c00283514c21194d1806`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def reflSymmTrans (p : Path x₀ x₁) : Homotopy (Path.refl x₁) (p.symm.trans p) :=
  (reflTransSymm p.symm).cast rfl <| congr_arg _ (Path.symm_symm _)

end

section TransRefl

/-- Auxiliary function for `trans_refl_reparam`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6968563145948b67953f4aa49441c0ce263f4c7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
