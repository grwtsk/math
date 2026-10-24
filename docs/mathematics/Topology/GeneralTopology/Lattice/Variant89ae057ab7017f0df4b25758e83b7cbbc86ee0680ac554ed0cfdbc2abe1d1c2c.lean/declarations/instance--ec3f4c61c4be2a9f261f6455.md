# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c587c3abc476674ba9988856bff31eab667a008062644a2de4f5f58942cc2566",
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
  "slug": "instance--ec3f4c61c4be2a9f261f6455",
  "source": {
    "blob": "b2fbd0433939d2e0793acddfdfe07902d870eaa6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 83,
    "line": 74,
    "path": "GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec3f4c61c4be2a9f261f6455ac98c30e5e79ba198d36bcb655db30239421f7e7",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c587c3abc476674ba9988856bff31eab667a008062644a2de4f5f58942cc2566`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 74–83.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasSolidNorm ℚ := ⟨fun _ _ _ => by simpa only [norm, ← Rat.cast_abs, Rat.cast_le] ⟩

end SolidNorm

/--
Let `α` be a normed commutative group equipped with a partial order covariant with addition, with
respect which `α` forms a lattice. Suppose that `α` is *solid*, that is to say, for `a` and `b` in
`α`, with absolute values `|a|` and `|b|` respectively, `|a| ≤ |b|` implies `‖a‖ ≤ ‖b‖`. Then `α` is
said to be a normed lattice ordered group.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Lattice/Variant89ae057ab7017f0df4b25758e83b7cbbc86ee0680ac554ed0cfdbc2abe1d1c2c.lean#L74).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b2fbd0433939d2e0793acddfdfe07902d870eaa6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
