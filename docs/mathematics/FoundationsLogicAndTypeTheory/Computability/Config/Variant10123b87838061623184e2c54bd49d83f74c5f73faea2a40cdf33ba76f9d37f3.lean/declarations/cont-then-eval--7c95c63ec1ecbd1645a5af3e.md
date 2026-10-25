# Cont.then_eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f91081b4-4433-0747-2409-369459e450d1",
  "kind": "theorem",
  "lexical_name": "Cont.then_eval",
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
  "slug": "cont-then-eval--7c95c63ec1ecbd1645a5af3e",
  "source": {
    "blob": "a0ea76331ace188dd8f3f634e25a71662305cab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 546,
    "line": 534,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c95c63ec1ecbd1645a5af3e3edde90edc22f548cf02f78bbfef068300968791",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f91081b4-4433-0747-2409-369459e450d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–546.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Cont.then_eval {k k' : Cont} {v} : (k.then k').eval v = k.eval v >>= k'.eval := by
  induction k generalizing v with
  | halt => simp only [Cont.eval, Cont.then, pure_bind]
  | cons₁ => simp only [Cont.eval, Cont.then, bind_assoc, *]
  | cons₂ => simp only [Cont.eval, Cont.then, *]
  | comp _ _ k_ih => simp only [Cont.eval, Cont.then, bind_assoc, ← k_ih]
  | fix _ _ k_ih =>
    simp only [Cont.eval, Cont.then, *]
    split_ifs <;> [rfl; simp only [← k_ih, bind_assoc]]

/-- The `then k` function is a "configuration homomorphism". Its operation on states is to append
`k` to the continuation of a `Cfg.ret` state, and to run `k` on `v` if we are in the `Cfg.halt v`
state. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ea76331ace188dd8f3f634e25a71662305cab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
