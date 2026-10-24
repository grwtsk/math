# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adf388d9c6cb2a96873c7bc773e582a1442a925dfbba6088126128452e710f1d",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--ad9eb15cb09d16712d649b81",
  "source": {
    "blob": "4a852387467617e0f208a1d13993cefe2c1b89c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 300,
    "line": 288,
    "path": "GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ad9eb15cb09d16712d649b817cb5da08efe43cfcf27f105d913cb3bdc2b78c59",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adf388d9c6cb2a96873c7bc773e582a1442a925dfbba6088126128452e710f1d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 288–300.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : AffineSpace (P1 →ᵃ[k] V2) (P1 →ᵃ[k] P2) where
  vadd f g :=
    ⟨fun p => f p +ᵥ g p, f.linear + g.linear,
      fun p v => by simp [vadd_vadd, add_right_comm]⟩
  zero_vadd f := ext fun p => zero_vadd _ (f p)
  add_vadd f₁ f₂ f₃ := ext fun p => add_vadd (f₁ p) (f₂ p) (f₃ p)
  vsub f g :=
    ⟨fun p => f p -ᵥ g p, f.linear - g.linear, fun p v => by
      simp [vsub_vadd_eq_vsub_sub, vadd_vsub_assoc, sub_add_eq_add_sub]⟩
  vsub_vadd' f g := ext fun p => vsub_vadd (f p) (g p)
  vadd_vsub' f g := ext fun p => vadd_vsub (f p) (g p)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/AffineMap/Variant48fa86e7387a24af5576160e4cd13c34f9861e41702ad60a5b4c7e2bb2c81578.lean#L288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a852387467617e0f208a1d13993cefe2c1b89c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
