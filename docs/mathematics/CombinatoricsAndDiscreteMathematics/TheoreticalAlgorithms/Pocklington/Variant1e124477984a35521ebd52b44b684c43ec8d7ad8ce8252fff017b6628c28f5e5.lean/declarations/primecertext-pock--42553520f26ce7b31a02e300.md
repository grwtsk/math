# PrimeCertExt.pock

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1426e2f9388ce3da78d0e05ff934a669e7cd4585a1b3a169b67c829875cc25c8",
  "kind": "def",
  "lexical_name": "PrimeCertExt.pock",
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
  "slug": "primecertext-pock--42553520f26ce7b31a02e300",
  "source": {
    "blob": "38573c6f572f30b2301419d823e696edb0f225e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 359,
    "line": 329,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:42553520f26ce7b31a02e300ce128e4d06b26adaba04f1dc0d1cb1012486589a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1426e2f9388ce3da78d0e05ff934a669e7cd4585a1b3a169b67c829875cc25c8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–359.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
@[prime_cert pock] def PrimeCertExt.pock : PrimeCertExt where
  syntaxName := ``pock_spec
  methodName := ``parsePockSpec

end Meta

open Meta

/-- Convenience elaborator combining `small` and `pock` steps into a single term.

Syntax: `pock% [small_primes; pock_steps]`

- Before the `;`: comma-separated small prime literals whose primality is already known
  (looked up as `PrimeCert.prime_<n>` declarations, e.g. `PrimeCert.prime_31`).
- After the `;`: comma-separated Pocklington steps `(N, root, F₁)` where:
  - `N` is the number to certify
  - `root` is a pseudo-primitive root of `N`
  - `F₁` is a factored divisor of `N - 1` with `F₁ > √N`, written as `p₁ ^ e₁ * p₂ * ...`

Steps are processed in order; each step can reference primes certified by earlier steps.
The last step's `N` becomes the certified prime.

```lean
-- Certify 31: declare small primes 2, 3; then one Pocklington step
theorem prime_31 : Nat.Prime 31 := pock% [2, 3; (31, 3, 2 * 3)]

-- Multi-step ladder: small primes, then intermediate, then target
theorem prime_16290860017 : Nat.Prime 16290860017 :=
  pock% [3, 29, 41; (339392917, 2, 3 ^ 4 * 29 * 41), (16290860017, 5, 339392917)]
```
-/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Pocklington/Variant1e124477984a35521ebd52b44b684c43ec8d7ad8ce8252fff017b6628c28f5e5.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `38573c6f572f30b2301419d823e696edb0f225e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
