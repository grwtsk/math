# _root_.IsPGroup.toSylow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:33ad001625b5fd4981bdb9405b9ca899235e50da408ec375d55893ad9c3b857c",
  "kind": "def",
  "lexical_name": "_root_.IsPGroup.toSylow",
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
  "slug": "root-ispgroup-tosylow--98dacf36e68cd5eb2b9b5f34",
  "source": {
    "blob": "f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 75,
    "path": "GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98dacf36e68cd5eb2b9b5f3459da112e1e254c96eabb439caeb07229912d96b3",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:33ad001625b5fd4981bdb9405b9ca899235e50da408ec375d55893ad9c3b857c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.IsPGroup.toSylow [Fact p.Prime] {P : Subgroup G}
    (hP1 : IsPGroup p P) (hP2 : ¬ p ∣ P.index) : Sylow p G :=
  { P with
    isPGroup' := hP1
    is_maximal' := by
      intro Q hQ hPQ
      have : P.FiniteIndex := ⟨fun h ↦ hP2 (h ▸ (dvd_zero p))⟩
      obtain ⟨k, hk⟩ := (hQ.to_quotient (P.normalCore.subgroupOf Q)).exists_card_eq
      have h := hk ▸ Nat.Prime.coprime_pow_of_not_dvd (m := k) Fact.out hP2
      exact le_antisymm (Subgroup.relindex_eq_one.mp
        (Nat.eq_one_of_dvd_coprimes h (Subgroup.relindex_dvd_index_of_le hPQ)
        (Subgroup.relindex_dvd_of_le_left Q P.normalCore_le))) hPQ }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Sylow/Variant192cc749d2625302f8712e878d0ff1a69aff54cd975129ec3a2ea59a8a884ef9.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d3582c5d4b73803bd00c4bc3ddfe98f0eaedb1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
