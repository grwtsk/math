# exists_bad_application

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:034575d9-6a0d-48ab-975e-9bcff58628d4",
  "kind": "theorem",
  "lexical_name": "exists_bad_application",
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
  "slug": "exists-bad-application--4a4b824950f3d0a8f71cfe7e",
  "source": {
    "blob": "e2ebd710b057f74801db614d83fa7e852ff69f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 995,
    "line": 980,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante2e83a1eaf5e0d3b816e16a61a4989134a3e3fc7ec35f7bfa6e50499fce9d01f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a4b824950f3d0a8f71cfe7ed0a3f981a77a20423a5ad3e474a478920d786ad0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante2e83a1eaf5e0d3b816e16a61a4989134a3e3fc7ec35f7bfa6e50499fce9d01f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:034575d9-6a0d-48ab-975e-9bcff58628d4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 980–995.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_bad_application {S : Type u} {P : Specification S}
    (h : ¬ SystemStronglyNormalizing P) :
    ∃ Γ f a D E, HasType P Γ f (.pi D E) ∧ HasType P Γ a D ∧
      StronglyNormalizing f ∧ StronglyNormalizing a ∧ ¬ StronglyNormalizing (.app f a) := by
  classical
  by_contra hn
  apply h
  apply stronglyNormalizing_of_application
  intro Γ f a D E hf ha hfs has
  by_contra hb
  exact hn ⟨Γ, f, a, D, E, hf, ha, hfs, has, hb⟩

namespace Normal

variable {S : Type u}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante2e83a1eaf5e0d3b816e16a61a4989134a3e3fc7ec35f7bfa6e50499fce9d01f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/Typing/Variante2e83a1eaf5e0d3b816e16a61a4989134a3e3fc7ec35f7bfa6e50499fce9d01f.lean#L980).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2ebd710b057f74801db614d83fa7e852ff69f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
