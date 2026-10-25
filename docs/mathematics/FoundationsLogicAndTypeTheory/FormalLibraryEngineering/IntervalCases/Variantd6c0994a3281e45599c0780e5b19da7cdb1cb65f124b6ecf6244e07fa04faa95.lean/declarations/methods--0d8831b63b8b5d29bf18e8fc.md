# Methods

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:03e676cdbd73e89a3e553bba85b800a414215812b2c548f200cdcee29038ee62",
  "kind": "structure",
  "lexical_name": "Methods",
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
  "slug": "methods--0d8831b63b8b5d29bf18e8fc",
  "source": {
    "blob": "0ab29fabd52e41b2d813c0fea7a32026e498158f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d8831b63b8b5d29bf18e8fc2312ad21093cf1c017a36f8cd3a6401d143fd9ea",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:03e676cdbd73e89a3e553bba85b800a414215812b2c548f200cdcee29038ee62`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Methods where
  /-- Given `e`, construct `(bound, n, p)` where `p` is a proof of `n ≤ e` or `n < e`
  (characterized by `bound`), or `failure` if the type is not lower-bounded. -/
  initLB (e : Expr) : MetaM (Bound × Expr × Expr) := failure
  /-- Given `e`, construct `(bound, n, p)` where `p` is a proof of `e ≤ n` or `e < n`
  (characterized by `bound`), or `failure` if the type is not upper-bounded. -/
  initUB (e : Expr) : MetaM (Bound × Expr × Expr) := failure
  /-- Given `a, b`, prove `a ≤ b` or fail. -/
  proveLE : Expr → Expr → MetaM Expr
  /-- Given `a, b`, prove `a ≱ b` or fail. -/
  proveLT : Expr → Expr → MetaM Expr
  /-- Given `a, b, a', p` where `p` proves `a ≱ b` and `a' := a+1`, prove `a' ≤ b`. -/
  roundUp : Expr → Expr → Expr → Expr → MetaM Expr
  /-- Given `a, b, b', p` where `p` proves `a ≱ b` and `b' := b-1`, prove `a ≤ b'`. -/
  roundDown : Expr → Expr → Expr → Expr → MetaM Expr
  /-- Given `e`, return `(z, n, p)` where `p : e = n` and `n` is a numeral
  appropriate for the type denoting the integer `z`. -/
  eval : Expr → MetaM (Int × Expr × Expr)
  /-- Construct the canonical numeral for integer `z`, or fail if `z` is out of range. -/
  mkNumeral : Int → MetaM Expr

variable {α : Type*} {a b a' b' : α}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntervalCases/Variantd6c0994a3281e45599c0780e5b19da7cdb1cb65f124b6ecf6244e07fa04faa95.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0ab29fabd52e41b2d813c0fea7a32026e498158f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
