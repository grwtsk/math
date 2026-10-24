# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.TriangleAudit.Variant2a0d3d4d469e63a39788910421cbb8d293f0b277a563ae06f4783169c1703a76

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7f40104aeda7d8075158356356a059b0b7483e21` · SHA-256 `2a0d3d4d469e63a39788910421cbb8d293f0b277a563ae06f4783169c1703a76`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransportFixtures
set_option linter.hashCommand false
open FormalResearch.PositiveAtlas.Spectral.FiniteCommonJTransportFixtures
#check forwardTriangle
#print axioms forwardTriangle
#check forwardTriangleDecidable
#print axioms forwardTriangleDecidable
#check triangleEdge
#print axioms triangleEdge
#check triangleEdge_reverse
#print axioms triangleEdge_reverse
#check triangleEdge_diagonal
#print axioms triangleEdge_diagonal
#check triangle_backtrack_loop_identity
#print axioms triangle_backtrack_loop_identity
#check triangleSites
#print axioms triangleSites
#check triangleSites_closed
#print axioms triangleSites_closed
#check triangle_loop_nonidentity
#print axioms triangle_loop_nonidentity
#check triangle_gauge_basepoint
#print axioms triangle_gauge_basepoint
```
