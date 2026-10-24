# map_isPrime_of_surjective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:890c5042-b39a-74cd-89f9-471049503d24",
  "kind": "theorem",
  "lexical_name": "map_isPrime_of_surjective",
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
  "slug": "map-isprime-of-surjective--d78907b133a4b64581741080",
  "source": {
    "blob": "e2e26f6b477f53838d974579ecfbd27a5d3e8e84",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1126,
    "line": 1111,
    "path": "GRWTSK/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d78907b133a4b6458174108096b9bb811231a57230db40a766ee6c56ca9277a4",
  "verification": {
    "reference": "docs/verification/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:890c5042-b39a-74cd-89f9-471049503d24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1111–1126.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_isPrime_of_surjective {f : F} (hf : Function.Surjective f) {I : Ideal R} [H : IsPrime I]
    (hk : RingHom.ker f ≤ I) : IsPrime (map f I) := by
  refine ⟨fun h => H.ne_top (eq_top_iff.2 ?_), fun {x y} => ?_⟩
  · replace h := congr_arg (comap f) h
    rw [comap_map_of_surjective _ hf, comap_top] at h
    exact h ▸ sup_le (le_of_eq rfl) hk
  · refine fun hxy => (hf x).recOn fun a ha => (hf y).recOn fun b hb => ?_
    rw [← ha, ← hb, ← map_mul f, mem_map_iff_of_surjective _ hf] at hxy
    rcases hxy with ⟨c, hc, hc'⟩
    rw [← sub_eq_zero, ← map_sub] at hc'
    have : a * b ∈ I := by
      convert! I.sub_mem hc (hk (hc' : c - a * b ∈ RingHom.ker f)) using 1
      abel
    exact
      (H.mem_or_mem this).imp (fun h => ha ▸ mem_map_of_mem f h) fun h => hb ▸ mem_map_of_mem f h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Maps/Variant1112800989cbe59fabea5659871872cc44c5f5d1b56f8a21bf11b40afa30bb7a.lean#L1111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e2e26f6b477f53838d974579ecfbd27a5d3e8e84` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
