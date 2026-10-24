# _root_.QuotientGroup.instIsMulTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ea4a3049ee02cf459f61dfa429a3927a24962924e2145ff0a8872727cc01d76c",
  "kind": "instance",
  "lexical_name": "_root_.QuotientGroup.instIsMulTorsionFree",
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
  "slug": "root-quotientgroup-instismultorsionfree--db4ba923b5e300985f166d04",
  "source": {
    "blob": "49a039de16c3052a309ddaf001f9d87bc151477a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 408,
    "line": 398,
    "path": "GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db4ba923b5e300985f166d04571ca6f3fbe0a9dbc0c4091e2a1e6b71e35039f8",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ea4a3049ee02cf459f61dfa429a3927a24962924e2145ff0a8872727cc01d76c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 398–408.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance _root_.QuotientGroup.instIsMulTorsionFree : IsMulTorsionFree <| G ⧸ torsion G := by
  refine .of_not_isOfFinOrder fun g hne hfin ↦ hne ?_
  induction' g using QuotientGroup.induction_on with g
  obtain ⟨m, mpos, hm⟩ := hfin.exists_pow_eq_one
  obtain ⟨n, npos, hn⟩ := ((QuotientGroup.eq_one_iff _).mp hm).exists_pow_eq_one
  exact (QuotientGroup.eq_one_iff g).mpr
    (isOfFinOrder_iff_pow_eq_one.mpr ⟨m * n, mul_pos mpos npos, (pow_mul g m n).symm ▸ hn⟩)

/-- Quotienting a group by its torsion subgroup yields a torsion free group. -/
@[to_additive
"Quotienting a group by its additive torsion subgroup yields an additive torsion free group."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Torsion/Variantb55399a48923a9b643283ebfdf05ce6face278bcb8e5fa00c4b7d42096cea4c4.lean#L398).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `49a039de16c3052a309ddaf001f9d87bc151477a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
