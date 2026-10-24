# Result.ofRawRat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8919d4f65a96ae1cc2fca0da579af2aeca3a1c40ef9161b7c1d2c7eba82c1457",
  "kind": "def",
  "lexical_name": "Result.ofRawRat",
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
  "slug": "result-ofrawrat--4e5938a3e27e4363b7eaffde",
  "source": {
    "blob": "0f6b328574094be8ac34357633d5aaec21a6727d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 531,
    "path": "GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4e5938a3e27e4363b7eaffde701fd5f7da85a4475fbe31948533f3fa43fbab9f",
  "verification": {
    "reference": "docs/verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8919d4f65a96ae1cc2fca0da579af2aeca3a1c40ef9161b7c1d2c7eba82c1457`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 531–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Result.ofRawRat {α : Q(Type u)} (q : ℚ) (e : Q($α)) (hyp : Option Expr := none) : Result e :=
  if q.den = 1 then
    Result.ofRawInt q.num e
  else if 0 ≤ q then
    Result.ofRawNNRat q e hyp
  else Id.run do
    let .app (.app (.app _ (dα : Q(DivisionRing $α))) (.app _ (n : Q(ℕ)))) (d : Q(ℕ)) := e
      | panic! "not a raw rat cast"
    let hyp : Q(($d : $α) ≠ 0) := hyp.get!
    .isNegNNRat dα q n d (q(IsRat.of_raw $α (.negOfNat $n) $d $hyp) : Expr)

/-- Convert a `Result` to a `Simp.Result`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Result/Variant6db6a2db2b67ba833f006cfa20fcb727089a4bae5c83ca23b3a11e5de20610ef.lean#L531).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0f6b328574094be8ac34357633d5aaec21a6727d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
