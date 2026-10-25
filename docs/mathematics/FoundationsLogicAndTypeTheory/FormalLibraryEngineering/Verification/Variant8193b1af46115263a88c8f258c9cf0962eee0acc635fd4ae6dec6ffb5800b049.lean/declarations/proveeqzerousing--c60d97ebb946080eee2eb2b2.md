# proveEqZeroUsing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:58bd4dee3296a79264176fae8a03d111a9dbb1e239874f3e0692d2a08f9d9e01",
  "kind": "def",
  "lexical_name": "proveEqZeroUsing",
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
  "slug": "proveeqzerousing--c60d97ebb946080eee2eb2b2",
  "source": {
    "blob": "08e45031d6c5f82a5f1fece752a0adc1ce918236",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 189,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c60d97ebb946080eee2eb2b25c576947e33a48d5761f082538b08daa35ec7cbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:58bd4dee3296a79264176fae8a03d111a9dbb1e239874f3e0692d2a08f9d9e01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–189.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def proveEqZeroUsing (tac : TacticM Unit) (e : Expr) : MetaM Expr := do
  let ⟨u, α, e⟩ ← inferTypeQ' e
  let _h : Q(Zero $α) ← synthInstanceQ q(Zero $α)
  synthesizeUsing' q($e = 0) tac

/-! #### The main method -/

/--
`proveFalseByLinarith` is the main workhorse of `linarith`.
Given a list `l` of proofs of `tᵢ Rᵢ 0`,
it tries to derive a contradiction from `l` and use this to produce a proof of `False`.

`oracle : CertificateOracle` is used to search for a certificate of unsatisfiability.

The returned certificate is a map `m` from hypothesis indices to natural number coefficients.
If our set of hypotheses has the form `{tᵢ Rᵢ 0}`,
then the elimination process should have guaranteed that
1.\ `∑ (m i)*tᵢ = 0`,
with at least one `i` such that `m i > 0` and `Rᵢ` is `<`.

We have also that
2.\ `∑ (m i)*tᵢ < 0`,
since for each `i`, `(m i)*tᵢ ≤ 0` and at least one is strictly negative.
So we conclude a contradiction `0 < 0`.

It remains to produce proofs of (1) and (2). (1) is verified by calling the provided `discharger`
tactic, which is typically `ring`. We prove (2) by folding over the set of hypotheses.

`transparency : TransparencyMode` controls the transparency level with which atoms are identified.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Verification/Variant8193b1af46115263a88c8f258c9cf0962eee0acc635fd4ae6dec6ffb5800b049.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `08e45031d6c5f82a5f1fece752a0adc1ce918236` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
