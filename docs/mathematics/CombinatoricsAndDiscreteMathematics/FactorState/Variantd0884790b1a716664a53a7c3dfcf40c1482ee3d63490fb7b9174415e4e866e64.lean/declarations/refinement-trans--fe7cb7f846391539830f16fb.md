# Refinement.trans

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5ba34af35d62c6168dfee780a13524f5054af519d1fb9f3cfaff60fc8687990d",
  "kind": "def",
  "lexical_name": "Refinement.trans",
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
  "slug": "refinement-trans--fe7cb7f846391539830f16fb",
  "source": {
    "blob": "e0438dbc1b7e5dc2925d0b038c6fc23d8e8e62b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 313,
    "line": 303,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantd0884790b1a716664a53a7c3dfcf40c1482ee3d63490fb7b9174415e4e866e64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fe7cb7f846391539830f16fb089b97585edd5b4d1d910fea5cf6029dea7df43f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantd0884790b1a716664a53a7c3dfcf40c1482ee3d63490fb7b9174415e4e866e64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5ba34af35d62c6168dfee780a13524f5054af519d1fb9f3cfaff60fc8687990d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–313.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Refinement.trans {N : ℕ} {s t u : State N}
    (first : Refinement s t) (second : Refinement t u) : Refinement s u where
  added := first.added + second.added
  added_primes := primeMap_add first.added_primes second.added_primes
  residual_split := by
    rw [first.residual_split, second.residual_split, primeProduct_add]
    ac_rfl
  extracted_update := by rw [second.extracted_update, first.extracted_update, add_assoc]
  exclusions_preserved := first.exclusions_preserved.trans second.exclusions_preserved

/-- Global integer reconstruction follows from the input invariant and local certificate. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/FactorState/Variantd0884790b1a716664a53a7c3dfcf40c1482ee3d63490fb7b9174415e4e866e64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/FactorState/Variantd0884790b1a716664a53a7c3dfcf40c1482ee3d63490fb7b9174415e4e866e64.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e0438dbc1b7e5dc2925d0b038c6fc23d8e8e62b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
