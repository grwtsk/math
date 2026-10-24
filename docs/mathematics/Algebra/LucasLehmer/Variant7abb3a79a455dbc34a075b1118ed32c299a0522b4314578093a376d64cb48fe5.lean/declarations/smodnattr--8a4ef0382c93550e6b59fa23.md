# sModNatTR

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe8a76d61dd6152e782cfa171c4bcc5d3df1aa874177f202e080e075aad82de8",
  "kind": "def",
  "lexical_name": "sModNatTR",
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
  "slug": "smodnattr--8a4ef0382c93550e6b59fa23",
  "source": {
    "blob": "87361122d89fb6264c21270da45e4a66d24f9de6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 532,
    "line": 521,
    "path": "GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a4ef0382c93550e6b59fa23fdca58fde13b8b049fb4693ca3e535025b043a93",
  "verification": {
    "reference": "docs/verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe8a76d61dd6152e782cfa171c4bcc5d3df1aa874177f202e080e075aad82de8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 521–532.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def sModNatTR (q : ℕ) (k : Nat) : ℕ :=
  go k (4 % q)
where
  /-- Helper function for `sMod''`. -/
  go : ℕ → ℕ → ℕ
  | 0, acc => acc
  | n + 1, acc => go n ((acc ^ 2 + (q - 2)) % q)

/--
Generalization of `sModNat` with arbitrary base case,
useful for proving `sModNatTR` and `sModNat` agree.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LucasLehmer/Variant7abb3a79a455dbc34a075b1118ed32c299a0522b4314578093a376d64cb48fe5.lean#L521).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87361122d89fb6264c21270da45e4a66d24f9de6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
