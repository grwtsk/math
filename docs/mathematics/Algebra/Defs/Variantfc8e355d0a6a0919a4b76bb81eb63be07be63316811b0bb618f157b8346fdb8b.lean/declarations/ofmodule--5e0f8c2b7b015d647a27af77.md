# ofModule

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8b5b312f2fa68418be450397804563b7a32e533e06559422b88911f89817aeeb",
  "kind": "abbrev",
  "lexical_name": "ofModule",
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
  "slug": "ofmodule--5e0f8c2b7b015d647a27af77",
  "source": {
    "blob": "09a01eac5a5f7853c412805f699621c811893bc7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 248,
    "line": 234,
    "path": "GRWTSK/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e0f8c2b7b015d647a27af776a757e03b5d2891c7fb00672c65fdc04faa74288",
  "verification": {
    "reference": "docs/verification/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `abbrev` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8b5b312f2fa68418be450397804563b7a32e533e06559422b88911f89817aeeb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–248.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
abbrev ofModule [CommSemiring R] [Semiring A] [Module R A]
    (h₁ : ∀ (r : R) (x y : A), r • x * y = r • (x * y))
    (h₂ : ∀ (r : R) (x y : A), x * r • y = r • (x * y)) : Algebra R A :=
  ofModule' (fun r x => by rw [h₁, one_mul]) fun r x => by rw [h₂, mul_one]

section Semiring

variable [CommSemiring R] [CommSemiring S]
variable [Semiring A] [Algebra R A] [Semiring B] [Algebra R B]

-- We'll later use this to show `Algebra ℤ M` is a subsingleton.
/-- To prove two algebra structures on a fixed `[CommSemiring R] [Semiring A]` agree,
it suffices to check the `algebraMap`s agree.
-/
@[ext]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Defs/Variantfc8e355d0a6a0919a4b76bb81eb63be07be63316811b0bb618f157b8346fdb8b.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09a01eac5a5f7853c412805f699621c811893bc7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
