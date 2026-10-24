# algebra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7b2815baee617c924d38cffdd55431965322437d17dd4ca376e14b0a46629fdc",
  "kind": "instance",
  "lexical_name": "algebra",
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
  "slug": "algebra--6036edffadaa25e2b7da7b62",
  "source": {
    "blob": "f842a4cf7dc01946b293e339f9b49be2f370c3a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 43,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6036edffadaa25e2b7da7b62fc3b1b7df5d0b5001a9ac2f884a3e9202b007ef5",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7b2815baee617c924d38cffdd55431965322437d17dd4ca376e14b0a46629fdc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance algebra : Algebra R (A × B) where
  algebraMap := RingHom.prod (algebraMap R A) (algebraMap R B)
  commutes' := by
    rintro r ⟨a, b⟩
    dsimp
    rw [commutes r a, commutes r b]
  smul_def' := by
    rintro r ⟨a, b⟩
    dsimp
    rw [Algebra.smul_def r a, Algebra.smul_def r b]

variable {R A B}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Prod/Variant57000b46975e90b1ab9f14adc2aa3645fc45be7a0ef0c49250c1cc90a47777fa.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f842a4cf7dc01946b293e339f9b49be2f370c3a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
