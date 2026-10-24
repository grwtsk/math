# Nodup.sigma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef0a76b0-98cc-b31b-e7b7-f96f787f25b4",
  "kind": "theorem",
  "lexical_name": "Nodup.sigma",
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
  "slug": "nodup-sigma--fd000a813b763dec4449741b",
  "source": {
    "blob": "fe5e40056559b8a11cdf2867c2d713230ab28f4f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 425,
    "line": 417,
    "path": "GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fd000a813b763dec4449741bca4e17347e473f95dc8c4ecc646832d1a2d6b347",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef0a76b0-98cc-b31b-e7b7-f96f787f25b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 417–425.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected theorem Nodup.sigma {σ : α → Type*} {t : ∀ a, Multiset (σ a)} :
    Nodup s → (∀ a, Nodup (t a)) → Nodup (s.sigma t) :=
  Quot.induction_on s fun l₁ => by
    choose f hf using fun a => Quotient.exists_rep (t a)
    simpa [← funext hf] using List.Nodup.sigma

end Sigma

end Multiset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Bind/Variantbda95bec9f5cbd28669b288309936f5aa54e3069f4dc116060542c20ce877fef.lean#L417).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe5e40056559b8a11cdf2867c2d713230ab28f4f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
