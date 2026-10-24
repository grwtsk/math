# powersEquivPowers

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a34305095e5545cb0709560dabd99a4009658367747496caffc8593322dca883",
  "kind": "def",
  "lexical_name": "powersEquivPowers",
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
  "slug": "powersequivpowers--9ff49bb180028a17864b2ac0",
  "source": {
    "blob": "b866331e1dbf913189bcd6d1e2d0caeb33216378",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 771,
    "line": 763,
    "path": "GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ff49bb180028a17864b2ac034dea890703d79d2e62d94a0228a6ccb89fc8371",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a34305095e5545cb0709560dabd99a4009658367747496caffc8593322dca883`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def powersEquivPowers [Finite G] (h : orderOf x = orderOf y) :
    (Submonoid.powers x : Set G) ≃ (Submonoid.powers y : Set G) :=
  (finEquivPowers x).symm.trans ((Fin.castIso h).toEquiv.trans (finEquivPowers y))
#align powers_equiv_powers powersEquivPowers
#align multiples_equiv_multiples multiplesEquivMultiples

-- Porting note: the simpNF linter complains that simp can change the LHS to something
-- that looks the same as the current LHS even with `pp.explicit`
@[to_additive (attr := simp, nolint simpNF) multiplesEquivMultiples_apply]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/OrderOfElement/Variant3268a0f8485e8d9328a7602786b925e50459df74d5089e8bfa3efe4e2bcd31cf.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b866331e1dbf913189bcd6d1e2d0caeb33216378` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
