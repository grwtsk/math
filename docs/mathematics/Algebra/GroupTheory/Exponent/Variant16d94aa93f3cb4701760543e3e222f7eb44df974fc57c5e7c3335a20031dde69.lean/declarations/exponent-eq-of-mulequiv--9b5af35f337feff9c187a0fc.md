# exponent_eq_of_mulEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8c42a6a1-0d3b-c796-450f-b175835b598f",
  "kind": "theorem",
  "lexical_name": "exponent_eq_of_mulEquiv",
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
  "slug": "exponent-eq-of-mulequiv--9b5af35f337feff9c187a0fc",
  "source": {
    "blob": "097441933a8fead7390ba136d1052efd8a511b7a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 376,
    "line": 364,
    "path": "GRWTSK/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9b5af35f337feff9c187a0fcb661ac4a20d93fb241a4a382e9132a88209cc1b4",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8c42a6a1-0d3b-c796-450f-b175835b598f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 364–376.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exponent_eq_of_mulEquiv (e : G ≃* H) : Monoid.exponent G = Monoid.exponent H :=
  Nat.dvd_antisymm
    (exponent_dvd_of_monoidHom e e.injective)
    (exponent_dvd_of_monoidHom e.symm e.symm.injective)

end Monoid

section Submonoid

variable [Monoid G]

variable (G) in
@[to_additive (attr := simp)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Exponent/Variant16d94aa93f3cb4701760543e3e222f7eb44df974fc57c5e7c3335a20031dde69.lean#L364).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `097441933a8fead7390ba136d1052efd8a511b7a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
