# _root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70.Function.Surjective.isBezout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34eb3faf-f086-9dd7-9287-dd6f752673ad",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70.Function.Surjective.isBezout",
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
  "slug": "root-grwtsk-algebra-iffspanpairisprincipal-variantcbf20c59f9686cc9e6b049--14c314d03b1396fa29d95d01",
  "source": {
    "blob": "84a440e857a7cddf25d3b0f58a15107c0cfcf82f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 47,
    "path": "GRWTSK/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:14c314d03b1396fa29d95d015cc22a204b3fb2cc6923d40abd0e881c2bbb5415",
  "verification": {
    "reference": "docs/verification/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34eb3faf-f086-9dd7-9287-dd6f752673ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–56.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Algebra.IffSpanPairIsPrincipal.Variantcbf20c59f9686cc9e6b049c17a03283d8d3d1106418acfcfcd21ecfd913caf70.Function.Surjective.isBezout {S : Type v} [CommRing S] (f : R →+* S)
    (hf : Function.Surjective f) [IsBezout R] : IsBezout S := by
  rw [iff_span_pair_isPrincipal]
  intro x y
  obtain ⟨⟨x, rfl⟩, ⟨y, rfl⟩⟩ := hf x, hf y
  use f (gcd x y)
  trans Ideal.map f (Ideal.span {gcd x y})
  · rw [span_gcd, Ideal.map_span, Set.image_insert_eq, Set.image_singleton]
  · rw [Ideal.map_span, Set.image_singleton]; rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Bezout/Variant01a92c792be9dfe8acd8599acd158d944f5bfc409e643c14c4bbf017588f770d.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84a440e857a7cddf25d3b0f58a15107c0cfcf82f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
