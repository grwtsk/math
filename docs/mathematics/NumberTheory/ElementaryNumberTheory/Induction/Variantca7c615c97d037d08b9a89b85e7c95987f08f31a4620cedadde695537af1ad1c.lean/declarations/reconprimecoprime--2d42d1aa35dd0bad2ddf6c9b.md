# recOnPrimeCoprime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:502c5774440ce9b853f8a83d84a47c79918c4ffd7f7405573906620ce1af6c4d",
  "kind": "def",
  "lexical_name": "recOnPrimeCoprime",
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
  "slug": "reconprimecoprime--2d42d1aa35dd0bad2ddf6c9b",
  "source": {
    "blob": "2801c6419578eed4c6880c1a0ca852e8101b81f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 76,
    "path": "GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2d42d1aa35dd0bad2ddf6c9bf6edd99299217751c80f85849f2650c245f5c741",
  "verification": {
    "reference": "docs/verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:502c5774440ce9b853f8a83d84a47c79918c4ffd7f7405573906620ce1af6c4d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def recOnPrimeCoprime {motive : ℕ → Sort*} (zero : motive 0)
    (prime_pow : ∀ p n : ℕ, Prime p → motive (p ^ n))
    (coprime : ∀ a b, 1 < a → 1 < b → Coprime a b → motive a → motive b → motive (a * b)) :
    ∀ a, motive a :=
  recOnPosPrimePosCoprime (fun p n h _ => prime_pow p n h) zero (prime_pow 2 0 prime_two) coprime

/-- Given `P 0`, `P 1`, `P p` for all primes, and a way to extend `P a` and `P b` to
`P (a * b)`, we can define `P` for all natural numbers. -/
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/ElementaryNumberTheory/Induction/Variantca7c615c97d037d08b9a89b85e7c95987f08f31a4620cedadde695537af1ad1c.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2801c6419578eed4c6880c1a0ca852e8101b81f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
