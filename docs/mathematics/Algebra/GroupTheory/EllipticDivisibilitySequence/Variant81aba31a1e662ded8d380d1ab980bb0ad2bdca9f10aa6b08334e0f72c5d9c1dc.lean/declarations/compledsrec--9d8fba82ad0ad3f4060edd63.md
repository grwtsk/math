# complEDSRec'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2ddd5a3281b07d07469088cb418ce42401a5a5fc9cbd50fba4996b01e6885d7d",
  "kind": "def",
  "lexical_name": "complEDSRec'",
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
  "slug": "compledsrec--9d8fba82ad0ad3f4060edd63",
  "source": {
    "blob": "4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 760,
    "line": 746,
    "path": "GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9d8fba82ad0ad3f4060edd63387ce06fd98165fcc2fb1815c8aa84dd8f755758",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2ddd5a3281b07d07469088cb418ce42401a5a5fc9cbd50fba4996b01e6885d7d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 746–760.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def complEDSRec' {P : ℕ → Sort*} (zero : P 0) (one : P 1)
    (even : ∀ m : ℕ, (∀ k < 2 * (m + 1), P k) → P (2 * (m + 1)))
    (odd : ∀ m : ℕ, (∀ k < 2 * (m + 1) + 1, P k) → P (2 * (m + 1) + 1)) (n : ℕ) : P n :=
  n.evenOddStrongRec (by rintro (_ | _) h; exacts [zero, even _ h])
    (by rintro (_ | _) h; exacts [one, odd _ h])

/-- Recursion principle for the complement sequence for a normalised EDS: if we have
* `P 0`, `P 1`,
* for all `m : ℕ` we can prove `P (2 * (m + 3))` from `P (m + 1)`, `P (m + 2)`, `P (m + 3)`,
  `P (m + 4)`, and `P (m + 5)`, and
* for all `m : ℕ` we can prove `P (2 * (m + 2) + 1)` from `P (m + 1)`, `P (m + 2)`, `P (m + 3)`,
  and `P (m + 4)`,

then we have `P n` for all `n : ℕ`. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/EllipticDivisibilitySequence/Variant81aba31a1e662ded8d380d1ab980bb0ad2bdca9f10aa6b08334e0f72c5d9c1dc.lean#L746).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fd27ef19864046c4bbd5e7e9df7ba900f18c1e2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
