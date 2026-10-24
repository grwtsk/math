# ext

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:281775ba-28e1-e08e-cb5a-a1e94861cf2f",
  "kind": "theorem",
  "lexical_name": "ext",
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
  "slug": "ext--633f34afdd42ec9d3eac6a58",
  "source": {
    "blob": "164e182669ae5f4557ace7f89a11deef80508f6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 154,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:633f34afdd42ec9d3eac6a587b0998934fd6d68afc4dc0ab955a20e56c63c703",
  "verification": {
    "reference": "docs/verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:281775ba-28e1-e08e-cb5a-a1e94861cf2f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–154.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ext {χ χ' : MulChar R R'} (h : ∀ a : Rˣ, χ a = χ' a) : χ = χ' := by
  apply ext'
  intro a
  by_cases ha : IsUnit a
  · exact h ha.unit
  · rw [map_nonunit χ ha, map_nonunit χ' ha]

/-!
### Equivalence of multiplicative characters with homomorphisms on units

We show that restriction / extension by zero gives an equivalence
between `MulChar R R'` and `Rˣ →* R'ˣ`.
-/


/-- Turn a `MulChar` into a homomorphism between the unit groups. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Basic/Variant5252941137868ddc67976122455f259b602eff3beeadefc59e39f2ac12c50b5c.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `164e182669ae5f4557ace7f89a11deef80508f6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
