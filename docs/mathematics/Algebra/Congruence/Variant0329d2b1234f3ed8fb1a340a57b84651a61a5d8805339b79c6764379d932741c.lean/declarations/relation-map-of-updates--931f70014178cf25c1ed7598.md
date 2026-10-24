# relation_map_of_updates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:58c4bbbd-fb7c-c797-11d0-6e4ffe00f0ae",
  "kind": "theorem",
  "lexical_name": "relation_map_of_updates",
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
  "slug": "relation-map-of-updates--931f70014178cf25c1ed7598",
  "source": {
    "blob": "2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 155,
    "line": 129,
    "path": "GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:931f70014178cf25c1ed759854a6a1cf0bde244927fcdd1318d2cf25da621d5b",
  "verification": {
    "reference": "docs/verification/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:58c4bbbd-fb7c-c797-11d0-6e4ffe00f0ae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–155.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem relation_map_of_updates {Carrier : Type} (rel : Setoid Carrier) {arity : ℕ}
    (operation : (Fin arity → Carrier) → Carrier)
    (stable : ∀ (coord : Fin arity) (inputs : Fin arity → Carrier) (left right : Carrier),
      rel left right →
      rel (operation (Function.update inputs coord left))
        (operation (Function.update inputs coord right)))
    (left right : Fin arity → Carrier) (related : ∀ coord, rel (left coord) (right coord)) :
    rel (operation left) (operation right) := by
  induction arity with
  | zero =>
    have : left = right := Subsingleton.elim _ _
    simp [this]
  | succ arity inductionHyp =>
    have headStep : rel (operation (Fin.cons (left 0) (Fin.tail left)))
        (operation (Fin.cons (right 0) (Fin.tail left))) := by
      simpa only [Fin.update_cons_zero] using
        stable 0 (Fin.cons (left 0) (Fin.tail left)) (left 0) (right 0) (related 0)
    have tailStep : rel (operation (Fin.cons (right 0) (Fin.tail left)))
        (operation (Fin.cons (right 0) (Fin.tail right))) := by
      apply inductionHyp (fun inputs => operation (Fin.cons (right 0) inputs))
          (fun coord inputs first second pairRelated => ?_) (Fin.tail left) (Fin.tail right)
          (fun coord => related coord.succ)
      simpa only [Fin.cons_update] using
        stable coord.succ (Fin.cons (right 0) inputs) first second pairRelated
    simpa only [Fin.cons_self_tail] using rel.trans' headStep tailStep

/-- A one-variable translation is obtained by fixing all but one input of an operation. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Congruence/Variant0329d2b1234f3ed8fb1a340a57b84651a61a5d8805339b79c6764379d932741c.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2f3de6fcc20e7c6a6e062bf6725ade6980ad3d4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
