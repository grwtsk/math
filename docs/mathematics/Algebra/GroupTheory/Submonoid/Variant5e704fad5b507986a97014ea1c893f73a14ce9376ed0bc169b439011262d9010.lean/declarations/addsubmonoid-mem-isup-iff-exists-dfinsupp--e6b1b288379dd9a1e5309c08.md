# AddSubmonoid.mem_iSup_iff_exists_dfinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c94be978-f90b-208c-3880-d6bec257e50f",
  "kind": "theorem",
  "lexical_name": "AddSubmonoid.mem_iSup_iff_exists_dfinsupp",
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
  "slug": "addsubmonoid-mem-isup-iff-exists-dfinsupp--e6b1b288379dd9a1e5309c08",
  "source": {
    "blob": "32d82a497b8be3413fdc4e69b8ca608ba834d60a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 95,
    "path": "GRWTSK/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6b1b288379dd9a1e5309c08971b6293529af3f83cf1d8f4649d805c195b43d0",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c94be978-f90b-208c-3880-d6bec257e50f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem AddSubmonoid.mem_iSup_iff_exists_dfinsupp [AddCommMonoid γ] (S : ι → AddSubmonoid γ)
    (x : γ) : x ∈ iSup S ↔ ∃ f : Π₀ i, S i, DFinsupp.sumAddHom (fun i => (S i).subtype) f = x :=
  SetLike.ext_iff.mp (AddSubmonoid.iSup_eq_mrange_dfinsuppSumAddHom S) x

/-- A variant of `AddSubmonoid.mem_iSup_iff_exists_dfinsupp` with the RHS fully unfolded. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Submonoid/Variant5e704fad5b507986a97014ea1c893f73a14ce9376ed0bc169b439011262d9010.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `32d82a497b8be3413fdc4e69b8ca608ba834d60a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
