# abLeftHomologyData

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4f4db7c1bc357ba9934ee754ea2b82b80a1d72343e142ff2819ff3ccfd63d052",
  "kind": "def",
  "lexical_name": "abLeftHomologyData",
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
  "slug": "ablefthomologydata--50329ea02a0725bbb8c4aae6",
  "source": {
    "blob": "6b7382f445fd84c34e1423e5a0bd49e6083dc09e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 57,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:50329ea02a0725bbb8c4aae63b13768dde538f2d7908e9f8e2716d00015df835",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4f4db7c1bc357ba9934ee754ea2b82b80a1d72343e142ff2819ff3ccfd63d052`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def abLeftHomologyData : S.LeftHomologyData where
  K := ↧S.g.hom.ker
  H := ↧(S.g.hom.ker ⧸ S.abToCycles.range)
  i := AddCommGrpCat.ofHom <| (AddMonoidHom.ker S.g.hom).subtype
  π := AddCommGrpCat.ofHom <| QuotientAddGroup.mk' _
  wi := by
    ext ⟨_, hx⟩
    exact hx
  hi := AddCommGrpCat.kernelIsLimit _
  wπ := by
    ext (x : S.X₁)
    dsimp
    rw [QuotientAddGroup.eq_zero_iff, AddMonoidHom.mem_range]
    apply exists_apply_eq_apply
  hπ := AddCommGrpCat.cokernelIsColimit (AddCommGrpCat.ofHom S.abToCycles)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Ab/Variant28af745533f50d8c55a081aa626eb390b4b040c2604c7d68637875f90e4c215d.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7382f445fd84c34e1423e5a0bd49e6083dc09e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
