# Cont.eval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5355f6d799f45d217a091e7e29eac4e7dcd7c841920882f59c2198152010e4ba",
  "kind": "def",
  "lexical_name": "Cont.eval",
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
  "slug": "cont-eval--ea33fbb0b55a01fda37e9592",
  "source": {
    "blob": "a0ea76331ace188dd8f3f634e25a71662305cab1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 454,
    "line": 439,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ea33fbb0b55a01fda37e95925deff2bb9a66bd55c22ed4b41a17673441705d82",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5355f6d799f45d217a091e7e29eac4e7dcd7c841920882f59c2198152010e4ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 439–454.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Cont.eval : Cont → List ℕ →. List ℕ
  | Cont.halt => pure
  | Cont.cons₁ fs as k => fun v => do
    let ns ← Code.eval fs as
    Cont.eval k (v.headI :: ns)
  | Cont.cons₂ ns k => fun v => Cont.eval k (ns.headI :: v)
  | Cont.comp f k => fun v => Code.eval f v >>= Cont.eval k
  | Cont.fix f k => fun v => if v.headI = 0 then k.eval v.tail else f.fix.eval v.tail >>= k.eval

/-- The set of configurations of the machine:

* `halt v`: The machine is about to stop and `v : List ℕ` is the result.
* `ret k v`: The machine is about to pass `v : List ℕ` to continuation `k : Cont`.

We don't have a state corresponding to normal evaluation because these are evaluated immediately
to a `ret` "in zero steps" using the `stepNormal` function. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Computability/Config/Variant10123b87838061623184e2c54bd49d83f74c5f73faea2a40cdf33ba76f9d37f3.lean#L439).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a0ea76331ace188dd8f3f634e25a71662305cab1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
