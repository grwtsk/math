# findNotPowerCertificate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f4cd1db2dfbb5ef8bb77305b2ba25df585e301c6753fac326dc0618d44185200",
  "kind": "def",
  "lexical_name": "findNotPowerCertificate",
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
  "slug": "findnotpowercertificate--fb2f352aeedd1013dde4d10e",
  "source": {
    "blob": "39c4802d9fc069cb478269172f5807ef173cfbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 285,
    "line": 273,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb2f352aeedd1013dde4d10eee96b76d593a27e80cb99822d6c55651c2cc39fb",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f4cd1db2dfbb5ef8bb77305b2ba25df585e301c6753fac326dc0618d44185200`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 273–285.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def findNotPowerCertificate (m n : Q(ℕ)) : MetaM (NotPowerCertificate m n) := do
  let .isNat (_ : Q(AddMonoidWithOne ℕ)) m _ := ← derive m | failure
  let .isNat (_ : Q(AddMonoidWithOne ℕ)) n _ := ← derive n | failure
  let mVal := m.natLit!
  let nVal := n.natLit!
  let .some k := findNotPowerCertificateCore mVal nVal | failure
  let .isBool true pf_left ← derive q($k ^ $n < $m) | failure
  let .isBool true pf_right ← derive q($m < ($k + 1) ^ $n) | failure
  return ⟨q($k), pf_left, pf_right⟩

/-- `norm_num` extension that proves `Irrational x ^ y` for rational `y`. `x` may be
natural or rational. -/
@[norm_num Irrational (_ ^ (_ : ℝ))]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Irrational/Variant6ff67cde72bc698b257202acea38992a3e888c38a46ba9565adf792cea8842ce.lean#L273).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39c4802d9fc069cb478269172f5807ef173cfbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
