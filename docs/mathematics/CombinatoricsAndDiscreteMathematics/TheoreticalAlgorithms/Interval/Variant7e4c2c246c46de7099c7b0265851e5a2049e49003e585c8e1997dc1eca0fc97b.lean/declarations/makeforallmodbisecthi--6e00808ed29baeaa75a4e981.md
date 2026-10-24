# makeForallModBisectHi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:056383b3edbef005ce4448e0e518a78958cbc4dd90b5323500ab4d3dc797d473",
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
  "slug": "makeforallmodbisecthi--6e00808ed29baeaa75a4e981",
  "source": {
    "blob": "3449ad4fb57c31a21810417e32782444fabb15ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 192,
    "line": 169,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6e00808ed29baeaa75a4e98169e2a4380f218bcc57b02de65164635057084ff8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:056383b3edbef005ce4448e0e518a78958cbc4dd90b5323500ab4d3dc797d473`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–192.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Interval/Variant7e4c2c246c46de7099c7b0265851e5a2049e49003e585c8e1997dc1eca0fc97b.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3449ad4fb57c31a21810417e32782444fabb15ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
