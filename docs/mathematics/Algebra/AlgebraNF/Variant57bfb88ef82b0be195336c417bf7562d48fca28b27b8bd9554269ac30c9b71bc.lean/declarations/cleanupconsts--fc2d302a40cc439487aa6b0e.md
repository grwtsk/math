# cleanupConsts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:de8807dbda1683f0502b0e9549fb47aa172d57a211e7f9a3502d5dd99ba6e52b",
  "kind": "def",
  "lexical_name": "cleanupConsts",
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
  "slug": "cleanupconsts--fc2d302a40cc439487aa6b0e",
  "source": {
    "blob": "adbba6650ae2ddd06de828446e2ab07631da80de",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 53,
    "path": "GRWTSK/Algebra/AlgebraNF/Variant57bfb88ef82b0be195336c417bf7562d48fca28b27b8bd9554269ac30c9b71bc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc2d302a40cc439487aa6b0eb1fcc027d063edb07adb1c3dd664ca3aadf12170",
  "verification": {
    "reference": "docs/verification/Algebra/AlgebraNF/Variant57bfb88ef82b0be195336c417bf7562d48fca28b27b8bd9554269ac30c9b71bc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:de8807dbda1683f0502b0e9549fb47aa172d57a211e7f9a3502d5dd99ba6e52b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 53–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cleanupConsts (cfg : RingNF.Config) (r : Simp.Result) : MetaM Simp.Result := do
  let thms : SimpTheorems := {}
  let thms ← [``add_zero, ``_root_.one_mul, ``_root_.mul_one,
    ``neg_mul, ``add_neg].foldlM (·.addConst ·) thms
  let thms ← [``ofNat_smul, ``neg_ofNat_smul, ``neg_1_smul, ``nnRat_ofNat_smul_1,
    ``nnRat_ofNat_smul_2, ``rat_ofNat_smul_1, ``rat_ofNat_smul_2
    ].foldlM (·.addConst · (post := false)) thms
  let ctx ← Simp.mkContext { zetaDelta := cfg.zetaDelta }
    (simpTheorems := #[thms])
    (congrTheorems := ← getSimpCongrTheorems)
  pure <| ←
    r.mkEqTrans (← Simp.main r.expr ctx (methods := Lean.Meta.Simp.mkDefaultMethodsCore {})).1

/-- The core of `algebra_nf with R` - normalize the expression `e` over the base ring `R`
Also used internally in `polynomial_nf`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/AlgebraNF/Variant57bfb88ef82b0be195336c417bf7562d48fca28b27b8bd9554269ac30c9b71bc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/AlgebraNF/Variant57bfb88ef82b0be195336c417bf7562d48fca28b27b8bd9554269ac30c9b71bc.lean#L53).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `adbba6650ae2ddd06de828446e2ab07631da80de` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
