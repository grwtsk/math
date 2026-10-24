# instExistsMulOfLE

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d74ec2ee1d8bfc9bec888ebce662611d1a166ab09501f1e916f798828a0b613f",
  "kind": "instance",
  "lexical_name": "instExistsMulOfLE",
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
  "slug": "instexistsmulofle--135d5b77fc6d3c1a218f3d9e",
  "source": {
    "blob": "905252f45dd3aadb869be5c3e733a9c7ba002bf8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 773,
    "line": 763,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9bea73437dd359e12bdb2b8bfed03f1c031cabeb5e51810fe66207ac51d93ae4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:135d5b77fc6d3c1a218f3d9e69b11d771e6d26a393956e71727166f9aa5a8567",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variant9bea73437dd359e12bdb2b8bfed03f1c031cabeb5e51810fe66207ac51d93ae4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d74ec2ee1d8bfc9bec888ebce662611d1a166ab09501f1e916f798828a0b613f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 763–773.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance instExistsMulOfLE [Mul β] [LE β] [ExistsMulOfLE β] : ExistsMulOfLE (Germ l β) where
  exists_mul_of_le {x y} := inductionOn₂ x y fun f g (h : f ≤ᶠ[l] g) ↦ by
    classical
    choose c hc using fun x (hx : f x ≤ g x) ↦ exists_mul_of_le hx
    refine ⟨ofFun fun x ↦ if hx : f x ≤ g x then c x hx else f x, coe_eq.2 ?_⟩
    filter_upwards [h] with x hx
    rw [dite_eq_left hx, hc]

end Germ

end Filter
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variant9bea73437dd359e12bdb2b8bfed03f1c031cabeb5e51810fe66207ac51d93ae4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variant9bea73437dd359e12bdb2b8bfed03f1c031cabeb5e51810fe66207ac51d93ae4.lean#L763).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `905252f45dd3aadb869be5c3e733a9c7ba002bf8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
