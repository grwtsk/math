# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38d94217d56926c2bf42855d0baf25c1f592c68396bdd408b1c2a7b98d918b36",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--d51590a88d61148df710aaca",
  "source": {
    "blob": "6276320a5cef6c76cc60bc47a8457e5267456fab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 170,
    "line": 160,
    "path": "GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d51590a88d61148df710aacaaad7a81d70d5b1bcfcadef9767a4a102c3a494f8",
  "verification": {
    "reference": "docs/verification/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38d94217d56926c2bf42855d0baf25c1f592c68396bdd408b1c2a7b98d918b36`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–170.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[no_expose] instance : NatPow (RingQuot r) :=
  ⟨fun ⟨a⟩ n ↦ ⟨Quot.lift (fun a ↦ Quot.mk (RingQuot.Rel r) (a ^ n))
    (fun a b (h : Rel r a b) ↦ by
      -- note we can't define a `Rel.pow` as `Rel` isn't reflexive so `Rel r 1 1` isn't true
      induction n with
      | zero => rw [pow_zero, pow_zero]
      | succ n ih =>
        simpa +instances [pow_succ, (· * ·), instMul, Quot.map₂_mk, mk.injEq] using
          congr_arg₂ (fun x y ↦ (⟨x⟩ : RingQuot r) * ⟨y⟩) ih (Quot.sound h))
    a⟩⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/RingQuot/Variantf25f873e64a8b1abbe69193bf756dc36ff93c6a436eb7cab689fd8dde75e91e2.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6276320a5cef6c76cc60bc47a8457e5267456fab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
