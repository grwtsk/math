# makeForallModBisectHi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8570d33b8d22a937b5f8774973815c29f4b9fb8eb7159b013d23c8a89bcde599",
  "kind": "def",
  "lexical_name": "makeForallModBisectHi",
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
  "slug": "makeforallmodbisecthi--e48e8ea7ba31dcfc6666ef3c",
  "source": {
    "blob": "2ab97df62387a646981fd7985615fe289c8f9b75",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 161,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e48e8ea7ba31dcfc6666ef3c88c1a19ce630e5454949f2a83df373008339a428",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8570d33b8d22a937b5f8774973815c29f4b9fb8eb7159b013d23c8a89bcde599`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
def makeForallModBisectHi
    (P : Expr) (hi b r : ℕ) (bE rE : Expr) (pf : ℕ → Expr) : Expr :=
  mkApp5 (mkConst ``forall_mod_start) P (rnl% hi) bE rE <|
    makeForallModBisectLoHi P r hi b r bE rE pf

/-- Tactic to prove bounded universal statements by exhaustive kernel checking.
Accepts four goal shapes:

- `∀ n < hi, P n`
- `∀ n, lo ≤ n → n < hi → P n`
- `∀ n < hi, n % b = r → P n`
- `∀ n, lo ≤ n → n < hi → n % b = r → P n`

The predicate `P n` must reduce to `true` (via `eagerReduce`) for every `n` in range.
The tactic builds a balanced binary tree of proof terms, so the elaboration depth is
logarithmic in the range size.

```lean
-- Check that wieferichKR is false or mirimanoffKR is false for all n ≡ 1 (mod 6), n < 6000:
theorem wieferich_mirimanoff₁ : ∀ n < 6000, n % 6 = 1 →
    (wieferichKR n).not'.or' (mirimanoffKR n).not' := by
  check_interval
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant76033524f77879f3582c824c7194b4cb7e889564c0f45d2a3d1a69620b0cdc80.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ab97df62387a646981fd7985615fe289c8f9b75` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
