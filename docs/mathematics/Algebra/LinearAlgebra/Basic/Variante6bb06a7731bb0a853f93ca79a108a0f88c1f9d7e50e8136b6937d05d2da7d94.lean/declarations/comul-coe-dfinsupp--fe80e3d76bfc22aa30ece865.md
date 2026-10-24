# comul_coe_dFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:31d92bf0-4ec3-4df8-795c-8d50272e6876",
  "kind": "theorem",
  "lexical_name": "comul_coe_dFinsupp",
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
  "slug": "comul-coe-dfinsupp--fe80e3d76bfc22aa30ece865",
  "source": {
    "blob": "7abb2ed7b2accf77634e93f84ae81e4522fea368",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 489,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fe80e3d76bfc22aa30ece8654c88aaa745b2872e76621acf70993608cc4163be",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:31d92bf0-4ec3-4df8-795c-8d50272e6876`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[simp] theorem comul_coe_dFinsupp (x : Π₀ i, A i) :
    comul (R := R) ⇑x = map (coeFnLinearMap _) (coeFnLinearMap _) (comul x) :=
  congr($comul_comp_dFinsuppCoeFnLinearMap x)

variable {M : Type*} [AddCommMonoid M] [Module R M] [CoalgebraStruct R M]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variante6bb06a7731bb0a853f93ca79a108a0f88c1f9d7e50e8136b6937d05d2da7d94.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7abb2ed7b2accf77634e93f84ae81e4522fea368` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
