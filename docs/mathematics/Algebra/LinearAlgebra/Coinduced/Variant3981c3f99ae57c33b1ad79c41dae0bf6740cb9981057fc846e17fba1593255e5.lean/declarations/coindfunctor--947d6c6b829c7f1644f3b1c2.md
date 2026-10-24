# coindFunctor'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ae11fa7d0a4a393b502f5acc6fc11f9e0304af3dacd5ae775367d51261aea924",
  "kind": "def",
  "lexical_name": "coindFunctor'",
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
  "slug": "coindfunctor--947d6c6b829c7f1644f3b1c2",
  "source": {
    "blob": "8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 169,
    "line": 157,
    "path": "GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:947d6c6b829c7f1644f3b1c24781bd180f64588f9c37c026a4a34c6efb949a07",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ae11fa7d0a4a393b502f5acc6fc11f9e0304af3dacd5ae775367d51261aea924`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–169.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def coindFunctor' : Rep k G ⥤ Rep k H where
  obj A := coind' φ A
  map f := coindMap' φ f

end Coind'
section CoindIso

/--
If `φ : G →* H` and `A : Rep k G` then the `k`-submodule of functions `f : H → A`
such that for all `g : G`, `h : H`, `f (φ g * h) = A.ρ g (f h)`, is `k`-linearly equivalent
to the `G`-representation morphisms `k[H] ⟶ A`.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Coinduced/Variant3981c3f99ae57c33b1ad79c41dae0bf6740cb9981057fc846e17fba1593255e5.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f141cb0a6cd560a3d34cd65a877ce1dc631c7a7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
