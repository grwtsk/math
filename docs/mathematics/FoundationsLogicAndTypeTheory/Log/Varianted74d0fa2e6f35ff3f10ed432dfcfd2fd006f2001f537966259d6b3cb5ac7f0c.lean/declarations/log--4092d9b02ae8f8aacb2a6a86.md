# log

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d9fd84f8cf73d28f1219185bb8c9774a0c10213d1f44e36bfd8bd657d8a0fd1",
  "kind": "def",
  "lexical_name": "log",
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
  "slug": "log--4092d9b02ae8f8aacb2a6a86",
  "source": {
    "blob": "d55ac8d3c91640e64ac966fb9abb0439412c8eff",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 38,
    "line": 30,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4092d9b02ae8f8aacb2a6a8685daa4a39dece5ecf6c54b3482b764049a786769",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d9fd84f8cf73d28f1219185bb8c9774a0c10213d1f44e36bfd8bd657d8a0fd1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 30–38.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def log (b : ℕ) : ℕ → ℕ
  | n =>
    if h : b ≤ n ∧ 1 < b then
      have : n / b < n := div_lt_self ((zero_lt_one.trans h.2).trans_le h.1) h.2
      log b (n / b) + 1
    else 0
#align nat.log Nat.log

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/Log/Varianted74d0fa2e6f35ff3f10ed432dfcfd2fd006f2001f537966259d6b3cb5ac7f0c.lean#L30).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d55ac8d3c91640e64ac966fb9abb0439412c8eff` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
