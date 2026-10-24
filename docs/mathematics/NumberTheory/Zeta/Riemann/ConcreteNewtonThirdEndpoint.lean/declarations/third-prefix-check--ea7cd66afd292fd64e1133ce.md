# third_prefix_check

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a8b2dc9-ce8b-a562-0d6c-ce26cbfda1b8",
  "kind": "theorem",
  "lexical_name": "third_prefix_check",
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
  "slug": "third-prefix-check--ea7cd66afd292fd64e1133ce",
  "source": {
    "blob": "3a3818f53b1c462159861a0589c9175bbbb6a76a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 83,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ea7cd66afd292fd64e1133cee05fe3d072a93b4312b045c4e1776320b033d5ec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a8b2dc9-ce8b-a562-0d6c-ce26cbfda1b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem third_prefix_check (t : RationalZetaTranscript.Transcript prefixLength)
    (ht : t.prefix ⟨2, by norm_num [prefixLength]⟩ = thirdOutput) :
    RationalZetaTranscript.checkPrefix prefixLength center plan t
      {⟨2, by norm_num [prefixLength]⟩} = true := by
  apply (RationalZetaTranscript.checkPrefix_iff prefixLength center plan t _).mpr
  intro i hi
  have he : i = (⟨2, by norm_num [prefixLength]⟩ : Fin prefixLength) :=
    Finset.mem_singleton.mp hi
  subst i
  exact ⟨third_admissible, third_endpoint_compute.trans ht.symm⟩

/-- The transcript must match ALL three complete states, including their errors. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a3818f53b1c462159861a0589c9175bbbb6a76a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
