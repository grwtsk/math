# liftRel_dropn_destruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 186,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0e/0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:61aca74e-502f-c4a9-66fd-20a6a9481209",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ce434038-cd99-5a02-6671-caf38a3e9c5e",
  "kind": "theorem",
  "lexical_name": "liftRel_dropn_destruct",
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
  "slug": "liftrel-dropn-destruct--d133c5cd47d5d3b828ca64d3",
  "source": {
    "blob": "180c51a648a169e3bf100d5cb658df48a180f8e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 197,
    "line": 186,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d133c5cd47d5d3b828ca64d3315c49b37fce8ae30cdd8524c1e061302a0d90be",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ce434038-cd99-5a02-6671-caf38a3e9c5e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 186–197.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftRel_dropn_destruct {R : α → β → Prop} {s t} (H : LiftRel R s t) :
    ∀ n, Computation.LiftRel (LiftRelO R (LiftRel R)) (destruct (drop s n)) (destruct (drop t n))
  | 0 => liftRel_destruct H
  | n + 1 => by
    simp only [LiftRelO, drop, Nat.add_eq, Nat.add_zero, destruct_tail, tail.aux]
    apply liftRel_bind
    · apply liftRel_dropn_destruct H n
    exact fun {a b} o =>
      match a, b, o with
      | none, none, _ => by simp
      | some (a, s), some (b, t), ⟨_, h2⟩ => by simpa [tail.aux] using liftRel_destruct h2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Relation/Variant0e7f717b817c03fc5680bc70c1d4c25907902596b2ecb0b55b487b6fb3e5e30c.lean#L186).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `180c51a648a169e3bf100d5cb658df48a180f8e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
