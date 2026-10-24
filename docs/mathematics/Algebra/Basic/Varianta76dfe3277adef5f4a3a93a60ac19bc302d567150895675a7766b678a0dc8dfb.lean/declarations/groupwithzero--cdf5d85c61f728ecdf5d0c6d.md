# groupWithZero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8bb8006a4707eacbcbe7022c01569e2db79fae7d60feede9430a554f222c8c89",
  "kind": "abbrev",
  "lexical_name": "groupWithZero",
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
  "slug": "groupwithzero--cdf5d85c61f728ecdf5d0c6d",
  "source": {
    "blob": "a1a84bb0e385ce49f92318c4536220a368987693",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 127,
    "path": "GRWTSK/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cdf5d85c61f728ecdf5d0c6d2b8c8be3229b9ad05fdfcf6a2adb1b870366cca5",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8bb8006a4707eacbcbe7022c01569e2db79fae7d60feede9430a554f222c8c89`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected noncomputable abbrev groupWithZero [hI : I.IsMaximal] :
    GroupWithZero (R ⧸ I) := fast_instance%
  { inv := fun a => if ha : a = 0 then 0 else Classical.choose (exists_inv ha)
    mul_inv_cancel := fun a (ha : a ≠ 0) =>
      show a * dite _ _ _ = _ by rw [dite_eq_right ha]; exact Classical.choose_spec (exists_inv ha)
    inv_zero := dite_eq_left rfl
    __ := Quotient.nontrivial_iff.mpr hI.out.1 }

/-- The quotient by a two-sided ideal that is maximal as a left ideal is a division ring.
This is a `def` rather than `instance`, since users
will have computable inverses (and `qsmul`, `ratCast`) in some applications.

See note [reducible non-instances]. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Varianta76dfe3277adef5f4a3a93a60ac19bc302d567150895675a7766b678a0dc8dfb.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1a84bb0e385ce49f92318c4536220a368987693` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
