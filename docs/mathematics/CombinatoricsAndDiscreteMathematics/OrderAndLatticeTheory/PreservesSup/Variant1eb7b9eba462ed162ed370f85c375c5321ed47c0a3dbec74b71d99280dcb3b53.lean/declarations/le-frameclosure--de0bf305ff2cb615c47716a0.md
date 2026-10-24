# le_frameClosure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f17106e1-df7f-1e74-3cf8-a5be67a87cd4",
  "kind": "theorem",
  "lexical_name": "le_frameClosure",
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
  "slug": "le-frameclosure--de0bf305ff2cb615c47716a0",
  "source": {
    "blob": "eafc68d9fede5ab51aa2d85f22a641d98cad172d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 128,
    "line": 120,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PreservesSup/Variant1eb7b9eba462ed162ed370f85c375c5321ed47c0a3dbec74b71d99280dcb3b53.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:de0bf305ff2cb615c47716a095ae558f0a741baa2f7bdc098fd92c3731d360dc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PreservesSup/Variant1eb7b9eba462ed162ed370f85c375c5321ed47c0a3dbec74b71d99280dcb3b53.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f17106e1-df7f-1e74-3cf8-a5be67a87cd4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 120–128.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_frameClosure {R : Type v} {β : Type w} (op : R → α → α) [∀ r, PreservesSup (op r)]
    (k : (β → α) → α) {Q : β → α} {pre : α}
    (hframe : ∀ (r : R) (Q' : β → α), op r (k Q') ⊑ k (fun a => op r (Q' a)))
    (hpre : pre ⊑ k Q) :
    pre ⊑ frameClosure op k Q :=
  (le_frameClosure_iff op k).mpr fun r =>
    PartialOrder.rel_trans (map_mono (op r) hpre) (hframe r Q)

/-- A right adjoint is monotone. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PreservesSup/Variant1eb7b9eba462ed162ed370f85c375c5321ed47c0a3dbec74b71d99280dcb3b53.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/PreservesSup/Variant1eb7b9eba462ed162ed370f85c375c5321ed47c0a3dbec74b71d99280dcb3b53.lean#L120).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eafc68d9fede5ab51aa2d85f22a641d98cad172d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
